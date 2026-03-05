---
layout: post
title: "A year of new package ecosystems"
date: 2026-03-05 12:00 +0000
---

Over the past nine months we've added ten new ecosystems to [packages.ecosyste.ms](https://packages.ecosyste.ms), bringing the total to over 80 package registries tracked, indexing nearly 14 million packages and over 153 million versions.

### [Helm](https://packages.ecosyste.ms/registries/artifacthub.io/packages)
<span class="badge bg-primary rounded-pill">8,874 packages</span> <span class="badge bg-success rounded-pill">255,206 versions</span>

Helm charts have their own dependency trees, versioning schemes, and security considerations, but until recently they've been largely invisible in supply chain analysis tooling. Having them indexed means users can trace dependencies from application code down to the infrastructure it runs on.

### [Terraform](https://packages.ecosyste.ms/registries/registry.terraform.io/packages)
<span class="badge bg-primary rounded-pill">21,451 packages</span> <span class="badge bg-success rounded-pill">185,351 versions</span>

Same story as Helm but for infrastructure provisioning. Terraform modules are deeply nested and widely depended upon, and now they're queryable through the same API as every other ecosystem we track.

### [OpenVSX](https://packages.ecosyste.ms/registries/open-vsx.org/packages)
<span class="badge bg-primary rounded-pill">11,293 packages</span> <span class="badge bg-success rounded-pill">107,938 versions</span>

The open alternative to the Visual Studio Code Marketplace, used by Eclipse Theia, VSCodium, Gitpod, and other open source editor distributions. Extensions are a growing attack surface and tracking them alongside traditional package ecosystems gives a more complete picture of developer toolchains.

### [Bazel](https://packages.ecosyste.ms/registries/registry.bazel.build/packages)
<span class="badge bg-primary rounded-pill">1,019 packages</span> <span class="badge bg-success rounded-pill">7,002 versions</span>

The Bazel Central Registry tracks modules for Google's build system, widely used in large monorepos at Google, Uber, Stripe, and elsewhere.

### [Conan](https://packages.ecosyste.ms/registries/conan.io/packages)
<span class="badge bg-primary rounded-pill">1,905 packages</span> <span class="badge bg-success rounded-pill">5,646 versions</span>

The leading package manager for C and C++ libraries. C/C++ has historically been underrepresented in supply chain datasets despite being the foundation of most operating systems and language runtimes.

### [Nixpkgs](https://packages.ecosyste.ms/ecosystems/nixpkgs)
<span class="badge bg-primary rounded-pill">143,132 packages</span> <span class="badge bg-success rounded-pill">154,704 versions</span>

The package collection behind the Nix package manager and NixOS, with reproducible builds as a core principle. One of the largest single-registry ecosystems we track.

### [Debian](https://packages.ecosyste.ms/ecosystems/debian)
<span class="badge bg-primary rounded-pill">34,734 packages</span>

Debian is one of the oldest and most widely used Linux distributions. System-level packages are the base layer that everything else sits on, and tracking them alongside language-level registries closes a significant gap in dependency analysis.

### [Ubuntu](https://packages.ecosyste.ms/ecosystems/ubuntu)
<span class="badge bg-primary rounded-pill">37,306 packages</span>

Built on top of Debian, Ubuntu's repositories include both inherited Debian packages and Ubuntu-specific additions. Tracking both gives a complete view of the two most popular Linux packaging ecosystems.

### [GNU Guix](https://packages.ecosyste.ms/registries/guix/packages)
<span class="badge bg-primary rounded-pill">30,573 packages</span> <span class="badge bg-success rounded-pill">31,409 versions</span>

A functional package manager similar in philosophy to Nix but built on GNU Guile Scheme, used both as a standalone package manager and as the basis for the Guix System distribution.

### [CTAN](https://packages.ecosyste.ms/registries/ctan.org/packages)
<span class="badge bg-primary rounded-pill">6,886 packages</span>

The Comprehensive TeX Archive Network has been home to LaTeX packages since 1992, serving a huge academic and publishing community that rarely shows up in software supply chain conversations.

### [IPS](https://packages.ecosyste.ms/registries/openindiana-hipster/packages)
<span class="badge bg-primary rounded-pill">10,548 packages</span> <span class="badge bg-success rounded-pill">12,470 versions</span>

The Image Packaging System for illumos-based distributions, indexed via the OpenIndiana Hipster repository.

All ten are available through the [packages API](https://packages.ecosyste.ms/docs) and [open data releases](https://packages.ecosyste.ms/open-data). If there's a package registry you'd like to see indexed, open an issue on the [packages repo](https://github.com/ecosyste-ms/packages) or get in touch at [hello@ecosyste.ms](mailto:hello@ecosyste.ms).
