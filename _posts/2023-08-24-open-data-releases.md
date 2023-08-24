---
layout: post
title: Open Data Releases
date: 2023-08-24 16:46 +0100
---

Ecosystems is a set of free and open resources about the production, distribution, and use of open source software. It comprises a structured dataset, released periodically for researchers, funders, and policymakers, and a set of tools and services for application developers. Today Ecosystems combines data on 8m+ open source components from over 50 package registries with over 160m dependent repositories on GitHub, GitLab, and BitBucket. With this data we create a map of open source interdependency from which we can infer much about the state of the open source infrastrcuture on which we all depend.

Today, we're excited to announce the release of five new open data sets from various services that have been collecting and analysing data about open source projects over the last year.

Each release is a full sql dump of the database of the service, enabling anyone to recreate the whole service or query the data in deep and complex ways offline.

## [Packages](https://packages.ecosyste.ms/open-data)

The packages service indexes open source packages from over 50 different package registries and records metadata and statistics on each package.

In the dataset, we have information on the package name, ecosystem, version, description, license, repository, homepage, keywords, maintainers, namespaces, registries and dependencies.

The open data release contains over 8 million packages from over 50 different package registries, over 68 million versions with over 830 million dependencies and over 1.3 million maintainers.

## [Commits](https://commits.ecosyste.ms/open-data)

The commits service clones open source repositories on a regular basis and counts to the number of contributors, commits and other statistics for both the life of the project and the last year's activity. 

In the dataset, we have information on the total commits, total committers, average commits per committer, and the Development Distribution Score ([DDS](https://report.opensustain.tech/chapters/development-distribution-score.html)), both for the current data and for the past year.

It has counted over 289 million commits across 1.2 million repositories from GitHub, GitLab, Bitbucket and may other git hosting services.

## [Issues](https://issues.ecosyste.ms/open-data)

The issues service indexes open source repositories on a regular basis and records issues and pull requests metadata and statistics for both the life of the project and the last year's activity. 

In the dataset, we have information on the total issues, total pull requests, average time to close issues, average time to close pull requests, total issue authors, total pull request authors, average comments per issue, average comments per pull request, merged pull requests, and bot issues, both for the current data and for the past year.

It has counted over 10 million issues and 21 million pull requests across 2.2 million repositories from GitHub, GitLab, Bitbucket and may other git hosting services.

## [Advisories](https://advisories.ecosyste.ms/open-data)

The advisories service indexes security advisories from the GitHub Advisory Database and then groups and aggregates them by package name and version.

In the dataset, we have information on permalink, origin, severity, classification, summary, description, identifiers, references, patched_versions, unaffected_versions, and vulnerable_versions.

The open data release contains over 14,000 advisories from 7,000 different packages.

## [Docker](https://docker.ecosyste.ms/open-data)

The docker service indexes docker images from Docker Hub and mines the dependency information from the built images using [syft](https://github.com/anchore/syft).

In the dataset, we have information on the package name, ecosystem and version for each dependency in the image with support for 20 different ecosystems.

The open data release contains over 195,000 images and over 75 million dependencies from Docker Hub.

## Explore the data

This data is a valuable resource for various users. Developers can use it to manage open-source projects more effectively. Researchers can spot trends and study collaboration patterns. Policymakers gain insights into the open-source community's health. By comparing current and past-year data, users can track project growth and changes over time. In essence, this data empowers users to make informed decisions, foster innovation, and contribute to open-source projects more efficiently.

Ready to explore the potential of this data? Dive in, analyze, and discover insights that can drive your open-source projects, research, and contributions. Start by accessing the dataset and tools provided. Join the community of data-driven decision-makers and innovators who are shaping the future of open source. Your actions today can make a difference tomorrow. Get started now!

We value your input! If you have suggestions, questions, or insights regarding this dataset or our tools, please don't hesitate to share. Your feedback is invaluable in improving our resources and better serving the open-source community. Let's collaborate to make this data even more informative and impactful. Get in touch with your thoughts or suggestions.