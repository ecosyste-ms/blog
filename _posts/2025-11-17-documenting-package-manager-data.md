---
layout: post
title: "Documenting Package Manager Data"
date: 2025-11-17 12:00 +0000
---

Information about package managers is spread out across different sources, formats, and documentation styles. This makes it harder to understand how different package managers work, compare approaches across ecosystems, and identify common patterns that could inform better practices.

We've been working with the [CHAOSS Package Metadata Working Group](https://github.com/chaoss/wg-package-metadata) and [Alpha-Omega](https://alpha-omega.dev) to document the similarities and differences across package manager clients and registries. Last week we published five repositories documenting different aspects of how package managers work.

## [Package Manager Commands](https://github.com/ecosyste-ms/package-manager-commands)

A cross-reference table of commands across 48 package managers. When you switch from npm to cargo, or pip to poetry, this maps the equivalent commands between ecosystems.

The data is extracted from manpages and `--help` outputs and stored as JSON files in `data/managers/` with generated markdown tables and CSV exports.

Check out the whole csv file rendered as a huge table here: [github.com/ecosyste-ms/package-manager-commands/blob/main/commands.csv](https://github.com/ecosyste-ms/package-manager-commands/blob/main/commands.csv)

## [Package Manager Manifest Examples](https://github.com/ecosyste-ms/package-manager-manifest-examples)

Over 145 manifest and lockfile examples from 34 package ecosystems, organized by PURL type.

Manifests include `package.json`, `requirements.txt`, `pyproject.toml`, `Cargo.toml`, `Gemfile`, `composer.json`, `go.mod`, `pom.xml`, and more. Lockfiles include `package-lock.json`, `yarn.lock`, `poetry.lock`, `Cargo.lock`, `Gemfile.lock`, `composer.lock`, `go.sum`, and others.

Initially extracted from [Bibliothecary](https://github.com/ecosyste-ms/bibliothecary), with additional examples from tools like Trivy, Syft, OSV-Scanner, and Grype. Each example documents its filename, type (manifest/lockfile), source project, and what features it demonstrates.

## [Package Manager OpenAPI Schemas](https://github.com/ecosyste-ms/package-manager-openapi-schemas)

OpenAPI 3.0 specifications for 25+ package registry APIs including npm, PyPI, Maven, RubyGems, Cargo, Docker, and Terraform.

Most schemas are generated using the [packages.ecosyste.ms](https://github.com/ecosyste-ms/packages) mapping code. Two registries, crates.io and open-vsx.org, have official OpenAPI specs. Hopefully more registries will publish official specs in the future.

You can use these specs to generate API clients, create documentation with Swagger UI, or build mock servers for testing.

## [Package Managers OPML](https://github.com/ecosyste-ms/package-managers-opml)

RSS and Atom feeds for tracking releases from package managers, registries, and related infrastructure projects. Import the OPML file into any feed reader to follow updates from npm, pip, cargo, Homebrew, Docker, Renovate, Dependabot, and others.

Feeds are organized by language and ecosystem.

## Contributing

These repositories collect what we've learned while researching the space. If you're building parsers, SBOM generators, or tools that work across package ecosystems, these might be useful references.

All five repositories are released under CC0 1.0 Universal and accept contributions if you have corrections or additions.
