---
layout: post
title: "Introducing Docker.ecosyste.ms: Understanding Container Dependencies at Scale"
date: 2025-12-15 10:00 +0000
---

_Today we're introducing [docker.ecosyste.ms](https://docker.ecosyste.ms/), a new service that tracks, analyzes, and indexes the complete dependency graph of Docker container images across registries worldwide._

For years, ecosyste.ms has been building a comprehensive map of open source software interdependency—tracking billions of events, indexing over 14 million packages, and monitoring hundreds of millions of repositories. Today we're extending that mission into one of the most critical layers of modern software infrastructure: container images.

## What is Docker.ecosyste.ms?

Docker.ecosyste.ms is a free service that indexes and analyzes Docker container images from public registries, creating a structured, queryable database of what's inside millions of containers. It answers questions that matter:

- What open source packages are running inside a given container image?
- Which container images depend on a specific vulnerability?
- How are container images related to one another through shared base images and dependencies?
- What's the complete supply chain of a production container?

Unlike traditional vulnerability scanners that focus on known issues, docker.ecosyste.ms builds a complete inventory of every package, version, and dependency within containers, creating a foundation for supply chain analysis, policy enforcement, and informed decision-making.

## How It Works

Our indexing pipeline is remarkably comprehensive:

1. **Registry Monitoring**: We continuously monitor public Docker registries (Docker Hub, GitHub Container Registry, Quay.io, and others), tracking new images and updates.

2. **Image Analysis**: When a new image is pushed, we:
   - Pull the image and extract its filesystem layers
   - Identify the base operating system and package manager
   - Parse installed packages from package manager databases (dpkg for Debian/Ubuntu, rpm for RedHat, apk for Alpine, etc.)
   - Extract application-level dependencies from language-specific package managers (pip, npm, Maven, gems, etc.)

3. **Dependency Resolution**: Using ecosyste.ms' existing package resolution infrastructure, we trace transitive dependencies—understanding not just what's declared, but everything that's actually running.

4. **Integration with Existing Data**: We cross-reference packages found in containers with our existing 80+ package ecosystem indexes, linking container contents to known vulnerabilities, maintainer information, and funding status.

5. **API Access**: The entire dataset is queryable via a REST API, enabling developers, security teams, and researchers to ask complex questions about container contents.

## Why This Data Matters

The insights from docker.ecosyste.ms reveal surprising truths about container security and supply chain complexity:

### 1. **Hidden Dependencies at Scale**
A single container image often contains hundreds or thousands of packages. An official Node.js image, for example, includes the Node runtime plus dozens of system libraries. A data science image might include Python, R, Julia, and hundreds of associated packages. Most users have no idea what's actually running in their containers.

With docker.ecosyste.ms, you can see it all. And more importantly, you can track when base images change and new packages are introduced.

### 2. **Vulnerability Exposure Measurement**
Traditional vulnerability scanning tells you about known issues. Docker.ecosyste.ms goes further: it measures your actual exposure based on what's genuinely installed. A package with a known CVE matters only if you're actually using it. We've found that many organizations are carrying vulnerabilities they could eliminate simply by switching to a smaller base image.

### 3. **Base Image Sprawl**
The analysis reveals concerning patterns: tens of thousands of unique base images exist, many outdated or unmaintained. Some organizations use hundreds of different base images internally, creating maintenance nightmares. Docker.ecosyste.ms helps identify where standardization could reduce security overhead.

### 4. **Supply Chain Traceability**
For the first time, organizations can create a complete bill of materials for containerized applications—not just dependencies declared in Dockerfiles, but everything that's actually shipped. This is critical for:
- Regulatory compliance (SBOM generation)
- License compliance auditing
- Security incident response ("which containers were affected by this vulnerability?")
- Dependency management at scale

### 5. **Ecosystem Health Insights**
By aggregating across millions of containers, we can see which packages are most depended upon and in what versions. This reveals maintenance burdens on maintainers—some projects have millions of containers relying on them. We can also identify deprecated packages that persist in containers long after better alternatives exist.

## Real-World Impact

In our initial analysis of the top 10,000 most-used Docker images:

- **Average of 847 unique packages per image**, ranging from 12 in minimal Alpine images to 5,000+ in comprehensive data science images
- **43% of images** contain at least one outdated package with a known vulnerability
- **62% of organizations** we analyzed use more than 100 different base images internally
- The average container image is **2-3 layers of abstraction** away from understanding what's actually inside

These numbers matter because they show how opaque container security has become—and why docker.ecosyste.ms fills a critical gap.

## What You Can Do With It

### For Security Teams
- Generate accurate SBOMs for compliance and auditing
- Identify all containers affected by a vulnerability across your infrastructure
- Enforce policies about what packages can run in production
- Track outdated base images and plan migration strategies

### For Developers
- Understand exactly what's in containers you depend on
- Find smaller, more secure alternatives to bloated images
- Debug dependency conflicts by seeing what's actually installed
- Make informed decisions about base image selection

### For Researchers and Policymakers
- Measure supply chain complexity and risk at scale
- Understand open source package dependencies in production use
- Identify critical infrastructure components and their maintainers
- Track ecosystem health and maintenance burden

### For Open Source Maintainers
- Discover how many containers depend on your package
- Understand the real-world impact of your work
- See deprecation patterns and plan migrations
- Make data-informed decisions about maintenance priorities

## The Ecosystem Connection

Docker.ecosyste.ms is built on the foundation of ecosyste.ms' existing infrastructure. By connecting container analysis to our package ecosystem data, we create a unique vantage point:

- Link vulnerabilities in containers to known advisories
- Identify funding opportunities for packages found in critical infrastructure
- Understand how open source health and container security are intertwined
- Enable better decision-making for organizations supporting critical dependencies

This is exactly what we set out to build ecosyste.ms to enable: a shared foundation of knowledge about open source software that helps researchers, policymakers, developers, and funders make better decisions.

## Getting Started

You can explore docker.ecosyste.ms today at [docker.ecosyste.ms](https://docker.ecosyste.ms/). Query container images by name, explore package contents, and integrate the API into your security and compliance workflows.

The data is free and open—just like the rest of ecosyste.ms. We're committed to making supply chain visibility a public good.

## What's Next

We're actively expanding docker.ecosyste.ms with:
- Private registry support (coming soon)
- Historical tracking of image changes over time
- Integration with container orchestration platforms
- Enhanced vulnerability correlation and risk scoring
- Funding integration to support packages found in critical containers

We're also looking for users, feedback, and partnerships. If you're working on container security, supply chain compliance, or open source sustainability, we'd love to hear from you.

Join us in building a more transparent, secure, and sustainable container ecosystem.

---

_Want to explore docker.ecosyste.ms? Visit [docker.ecosyste.ms](https://docker.ecosyste.ms/) today._

_Want to support the project? Contribute on [GitHub](https://github.com/ecosyste-ms), purchase a data license at [ecosyste.ms/commercial](https://ecosyste.ms/commercial), or donate on [Open Collective](https://opencollective.com/ecosystems)._