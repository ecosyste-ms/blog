# ========================================================
# Builder stage
# ========================================================
FROM ruby:3.4.7-alpine AS builder

ENV APP_ROOT=/usr/src/app
WORKDIR $APP_ROOT

# Install build dependencies
RUN apk add --update --no-cache \
    build-base \
    git \
    nodejs \
    postgresql-dev \
    tzdata \
    curl-dev \
    yaml-dev \
    libffi-dev \
 && rm -rf /var/cache/apk/*

# Copy dependency files
COPY Gemfile Gemfile.lock .ruby-version $APP_ROOT/

# Install gems
RUN bundle config --global frozen 1 \
 && bundle config set without 'test' \
 && bundle install --jobs 2

# Copy application code
COPY . $APP_ROOT

# ========================================================
# Final stage
# ========================================================
FROM ruby:3.4.7-alpine

ENV APP_ROOT=/usr/src/app
WORKDIR $APP_ROOT

# Install runtime dependencies only
RUN apk add --update --no-cache \
    bash \
    nodejs \
    postgresql-libs \
    tzdata \
    curl \
    yaml \
    jemalloc \
 && rm -rf /var/cache/apk/*

# Configure jemalloc and YJIT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
ENV RUBY_YJIT_ENABLE=1

# Copy compiled gems from builder
COPY --from=builder /usr/local/bundle /usr/local/bundle

# Copy application code from builder
COPY --from=builder $APP_ROOT $APP_ROOT

# Startup
CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "5000" ]
