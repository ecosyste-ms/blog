---
layout: post
title: "Introducing docker.ecosyste.ms: what's actually inside your containers"
date: 2026-08-18 12:00 +0000
---

Dockerfiles tell you what an image's author *intended* to install. The image itself tells you what's actually in there — every OS package, language dependency, and binary that made it into the final layers.

Those two things are often very different, and until now the second one has been mostly invisible. Today we're introducing [docker.ecosyste.ms](https://docker.ecosyste.ms), an open API and dataset that extracts dependencies, packages, and Linux distributions from hundreds of thousands of public Docker images.

## What it is

[docker.ecosyste.ms](https://docker.ecosyste.ms) is the newest member of the [Ecosyste.ms](https://ecosyste.ms) family. Where [packages.ecosyste.ms](https://packages.ecosyste.ms) tracks what package registries *declare* about their packages, this service looks at what container images actually *contain*.

Every indexed image is analyzed and its contents normalized into the same dependency model we use across the rest of Ecosyste.ms: each artifact becomes a package with a [purl](https://github.com/package-url/purl-spec), an ecosystem, and a version. The data is available through a [REST API](https://docker.ecosyste.ms/docs) and [open data exports](https://docker.ecosyste.ms/open-data), licensed under CC BY-SA 4.0.

## How it works

The pipeline is deliberately simple:

1. **Discover.** We track public images on Docker Hub through the registry metadata in packages.ecosyste.ms, sorted by downloads so popular images are indexed first.
2. **Scan.** For each image version we run [Syft](https://github.com/anchore/syft) to generate a software bill of materials (SBOM). Syft's catalogers understand OS packages (dpkg, rpm, apk, nix, portage, and more) as well as language-level dependencies — Python, Ruby, Node, Go, Rust, Java, .NET, PHP, and a long tail of others.
3. **Normalize.** We extract every package URL from the SBOM and store it as a dependency record with its ecosystem and version, so a Python wheel inside an image and an npm package inside another image can be queried through the same API.
4. **Track.** We also record which Linux distribution each image is built on, so distro-level questions are answerable too.

Then the same machinery that powers the rest of Ecosyste.ms — background workers, open data dumps, and the shared API conventions — makes it queryable.

## Why the data is interesting

**Supply chain reality, not declared intent.** A Dockerfile's `apt-get install` line is a promise; the image is the truth. Transitive dependencies, OS patches, and things bundled into base images never appear in the Dockerfile, but they're exactly what ships to production. This dataset makes the gap measurable.

**Usage intelligence from the ground truth.** Package download counts measure interest; what's actually *inside* public images measures deployment. Seeing which versions of a library are common in real containers is a very different signal from which versions are downloaded, and a much better one for questions like "what should I test against?"

**Cross-image composition.** Because every image's contents are normalized to the same model, you can ask questions that were previously impractical: which distros dominate public images? Which packages co-occur with which? What does the median image actually contain? Some answers are surprising — one popular Discord bot image we indexed ships with over 1,400 dependencies.

**A foundation for security research.** An SBOM is only useful if you can search it. With this data, vulnerability research can move from "which images *might* be affected" to "which images are affected, and how many people pull them." The [open data exports](https://docker.ecosyste.ms/open-data) make bulk analysis possible without hammering the API.

## Try it

The API follows the same conventions as the rest of Ecosyste.ms:

- `https://docker.ecosyste.ms/api/v1/packages` — browse indexed images
- `https://docker.ecosyste.ms/api/v1/packages/:name/versions` — versions and their dependencies
- `https://docker.ecosyste.ms/api/v1/distros` — Linux distributions found in public images
- `https://docker.ecosyste.ms/api/v1/usage` — which images use a given package

The default rate limit is 5,000 requests per hour per IP; get in touch if you need more.

This is open source, and there's plenty of room to help: the [docker service repo](https://github.com/ecosyste-ms/docker) has issues tagged [help wanted](https://github.com/ecosyste-ms/docker/issues?q=is%3Aopen+is%3Aissue+label%3A%22help+wanted%22), and we'd love to hear about use cases we haven't thought of.

We're excited to see what people do when the inside of a container stops being a black box.
