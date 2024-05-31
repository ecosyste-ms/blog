FROM ruby:3.3.2-alpine3.19

ENV APP_ROOT /usr/src/app
WORKDIR $APP_ROOT

# * Setup system
# * Install Ruby dependencies
RUN apk add --update \
    build-base \
    netcat-openbsd \
    git \
    nodejs \
    tzdata \
    curl \
    curl-dev \
    libc6-compat \
 && rm -rf /var/cache/apk/* 

# Will invalidate cache as soon as the Gemfile changes
COPY Gemfile Gemfile.lock $APP_ROOT/

RUN bundle config --global frozen 1 \
 && bundle config set without 'test' \
 && bundle install --jobs 2

# ========================================================
# Application layer

# Copy application code
COPY . $APP_ROOT

# Startup
CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "5000" ]
