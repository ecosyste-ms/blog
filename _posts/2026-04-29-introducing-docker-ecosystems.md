---
layout: post
title: "Introducing docker.ecosyste.ms"
date: 2026-04-29 12:00 +0000
---

Containers have become the default way many projects are built, shipped, and run. They are also one of the places where open source dependencies become hardest to see.

A Docker image can contain packages from language registries, Linux distributions, build tools, runtime libraries, and files copied from an application repository. By the time that image is published, a lot of useful supply-chain context has been compressed into a layer stack that most package indexes never inspect.

[docker.ecosyste.ms](https://docker.ecosyste.ms/) is our attempt to make that layer visible.

The service indexes public Docker images and extracts structured data about the software inside them. Today it tracks hundreds of thousands of image versions and software bills of materials, making it possible to browse images, see their releases, inspect dependencies, and connect container usage back to the rest of the ecosyste.ms data set.

## What the service does

For each indexed image, docker.ecosyste.ms collects image metadata and analyzes the packages found inside published versions. That gives each image a page with information such as:

- available releases and tags
- download counts where registry data makes that available
- detected dependencies and package counts
- sync recency
- links back into the broader ecosyste.ms graph

The result is not just another container registry browser. It is a dependency index for the container layer.

That matters because containers often bridge ecosystems. A single image might combine Debian or Ubuntu packages, a Python application, Node tooling, a Go binary, and a shell entrypoint. Seeing only the application repository or only the language package registry misses the composition that is actually deployed.

## Why Docker data is interesting

Docker images are a useful signal for how open source is used in production-like environments.

Package registries tell us what can be installed. Repositories tell us what developers publish and maintain. Containers tell us what people assemble into runnable systems.

That makes container data useful for questions like:

- Which language packages commonly appear together in deployed images?
- Which Linux distribution packages are present below application dependencies?
- Which images carry very large dependency surfaces?
- How quickly do popular images pick up new upstream releases?
- Which open source projects are most commonly redistributed through containers?

This is especially valuable for security and maintenance work. Vulnerability response often starts from a package name, but the operational question is usually: where is this package actually running? Container SBOM data helps close that gap.

## How it fits with ecosyste.ms

The docker service is part of the larger ecosyste.ms goal: make open source infrastructure observable through open data.

We already track package registries, repositories, advisories, archives, commits, funding, and dependency relationships. Docker images add another important perspective. They show how those pieces get bundled and redistributed.

Because docker.ecosyste.ms uses the same style of open APIs and identifiers as the rest of the project, the data can be combined with other services. A package found inside an image can be connected to package metadata, repository metadata, advisories, and usage signals elsewhere in the ecosystem.

That lets researchers, maintainers, funders, and security teams move from isolated facts to a richer map of software use.

## What comes next

There is still a lot to improve. Container metadata varies by registry, SBOM extraction is imperfect, and some images are intentionally minimal or unusual. But even partial visibility is a major improvement over treating containers as opaque artifacts.

As docker.ecosyste.ms grows, we expect it to become useful for:

- dependency and vulnerability research
- measuring adoption of packages and distributions
- finding high-impact images and maintainers
- understanding real-world software composition
- connecting container ecosystems back to package and source ecosystems

If you work with containers, supply-chain data, or open source sustainability, take a look at [docker.ecosyste.ms](https://docker.ecosyste.ms/). The image layer has been a blind spot for too long, and we are excited to start making it queryable.
