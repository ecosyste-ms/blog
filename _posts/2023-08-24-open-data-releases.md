---
layout: post
title: Open Data Releases
date: 2023-08-24 16:46 +0100
---

Ecosystems is a set of free and open resources about the production, distribution, and use of open source software. It comprises a structured dataset, released periodically for researchers, funders, and policymakers, and a set of tools and services for application developers. Today Ecosystems combines data on 8m+ open source components from over 50 package registries with over 160m dependent repositories on GitHub, GitLab, and BitBucket. With this data, we create a map of open source interdependency from which we can infer much about the state of the open source infrastructure on which we all depend.

Today, we're excited to announce the release of five new open data sets from various services that have been collecting and analysing data about open source projects over the last year.

Each release is a full SQL dump of the database of the service, enabling anyone to recreate the whole service or query the data in deep and complex ways on their own hardware.

## [Packages](https://packages.ecosyste.ms/open-data)

The open data release comprises over 8 million packages from over 50 different package registries, over 68 million versions with over 830 million dependencies and over 1.3 million maintainers. It contains information on the package name, ecosystem, version, description, license, repository, homepage, keywords, maintainers, namespaces, registries and dependencies.

## [Commits](https://commits.ecosyste.ms/open-data)

The commits service clones open source repositories regularly and counts the number of contributors, commits and other statistics throughout the project's life. It has indexed over 289 million commits across 1.2 million repositories from GitHub, GitLab, Bitbucket and may other git hosting services.

In the dataset, we have information on the total commits, total committers, average commits per committer, and the Development Distribution Score ([DDS](https://report.opensustain.tech/chapters/development-distribution-score.html)), both for the current data and for the past year.

## [Issues](https://issues.ecosyste.ms/open-data)

The issues service indexes open source repositories on a regular basis and records issues and pull requests metadata and statistics for both the life of the project and the last year's activity. We have indexed over 10 million issues and 21 million pull requests across 2.2 million repositories from GitHub, GitLab, Bitbucket and may other git hosting services.

In the dataset, we have information on the total issues, total pull requests, average time to close issues, average time to close pull requests, total issue authors, total pull request authors, average comments per issue, average comments per pull request, merged pull requests, and bot issues, both for the current data and for the past year.

## [Advisories](https://advisories.ecosyste.ms/open-data)

The advisories service indexes security advisories from the GitHub Advisory Database and then groups and aggregates them by package name and version. The release contains over 14,000 advisories from 7,000 different packages.

In the dataset, we have information on permalink, origin, severity, classification, summary, description, identifiers, references, patched_versions, unaffected_versions, and vulnerable_versions.

## [Docker](https://docker.ecosyste.ms/open-data)

The docker service indexes docker images from Docker Hub and mines the dependency information from the built images using [syft](https://github.com/anchore/syft). This release contains over 195,000 images and over 75 million dependencies from Docker Hub.

In the dataset, we have information on the package name, ecosystem and version for each dependency in the image with support for 20 different ecosystems.

## Explore the data

This dataset and Ecosystems as a service are invaluable for researchers, policymakers, developers, and funders seeking to identify, secure, and sustain critical open source components. Use ecosystems to:

- Build applications and services that help users manage their open source usage.
- Identify software that is critical to your project, organisation, country or the world.
- Reason about the usage, authorship and impact of open source components.

## Ready to explore the potential of this data? 

Dive in, analyze, and discover insights that can drive your open-source projects, research, and contributions. Start by accessing the dataset and tools provided. 

Join the community of data-driven decision-makers and innovators who are shaping the future of open source. Your actions today can make a difference tomorrow. Get started now!

## Want more? Tell us!

Ecosystems is actively maintained and developed. Over the coming years, plan to expand the breadth and range of data stored, and to build services to lower the barriers to access and build upon that data. 

If you have suggestions, questions, or insights regarding this dataset or our tools, please don't hesitate to share. Your feedback is invaluable in improving our resources and better serving the open-source community. Let's collaborate to make this data even more informative and impactful. Get in touch with your thoughts or suggestions.

## Donate to Ecosyste.ms

Ecosyste.ms is hosted by Open Collective Foundation, a charity focussed on supporting civil society, solidarity and mutual aid. Donations to Ecosyste.ms are tax-deductible.

## Ecosyste.ms for commercial use

Ecosyste.ms code and data are licenced under AGPL-3 and CC BY-SA 4.0 respectively. Ecosyste.ms is able to provide alternative licenses under a service agreement by request. Email commercial@ecosyste.ms for more information. 
