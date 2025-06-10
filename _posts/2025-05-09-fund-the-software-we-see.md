---
layout: post
title: "We should fund the software we use, not just the software we see"
date: 2025-06-09 17:00 +0000
---

__This post first appeared on the [Open Source Pledge Blog](https://opensourcepledge.com/blog/we-should-fund-the-software-we-use/). Thank you to Chad, Sentry, and all the other Open Source Pledge members.__

At FOSDEM this year Ben (Open Source Collective) and Andrew (ecosyste.ms) [spoke about a decade of working together](https://fosdem.org/2025/schedule/event/fosdem-2025-5576-open-source-funding-you-re-doing-it-wrong/) in open source sustainability and ‘digital infrastructure’.

In that time they’ve built tools ([libraries.io](https://libraries.io), [octobox.io](https://octobox.io), [24pullrequests.com](https://24pullrequests.com)/) to help Open Source developers directly and, most recently, a set of digital services and data sets to aid and accelerate the work of policymakers, researchers and developers building toward a secure and sustainable future for open source, called [ecosyste.ms](https://ecosyste.ms).

Their most recent release, [Ecosystem Funds](https://funds.ecosyste.ms), was built atop these services, in a matter of weeks, as a direct response to the Open Source Pledge. So we thought we’d invite them to tell us what it is, and why they’ve spent the past six months perfecting their process — including the distribution of $75k of funding from Sentry.

— Chad



---

With the lede thoroughly buried (thanks Chad!): yes, we’re here to talk about Ecosystem Funds, our take on the ‘fund the entire ecosystem’ playbook that others (StackAid, thanks.dev, FLOSSBank, BackYourStack and many more) have released over the past decade. While we support all of those platforms through the tools and services available at [ecosyste.ms](https://ecosyste.ms) we wanted to offer a one-stop-shop for funders struggling to understand their core open source dependencies, and to develop and support the entire ecosystem of funding solutions while we do it.

### What are Ecosystem Funds?

Essentially Ecosystem Funds are curated sets of open source components that are the most critical (that is, most used) in their respective domains. We built funds at various levels of depth — there's a Fund for Django, and one for the entire Python ecosystem — so that open source funders can make an informed decision about which projects to support, without having to do months of work to understand their software estate, and the mass of open source that’s critical to their work.

The slogan version of that is: We turn a three month audit into a five minute conversation with your CTO or VP Engineering.

### How does it work?

From there we run the entire process for funders. No, really, we do.

We accept donations, allocate 100% of the funds to projects on a monthly basis, and manage the process of getting those funds to the maintainers using the platforms they choose to accept funds.

We support all funding platforms. Whether a maintainer uses GitHub Sponsors, thanks.dev, Patreon, Kofi, or any other platform, we direct donations where projects want to receive them. If a project has not indicated a platform in their funding.yaml we encourage them to look at the options available to them. Once they have chosen one, we direct donations there at the end of the month. For projects that do not choose a platform, we distribute funds directly to maintainers using Open Collective.

That might sound like a lot, but our partnership with Open Source Collective is the key: Ecosystem Funds is driven by the data-led approach of [ecosyste.ms](https://ecosyste.ms), which tracks 230m repos and billions of individual events, and Open Source Collective, who move ~$25m annually on behalf of their 2,500 member open source projects. Ecosystem Funds effectively drives Open Source Collective programmatically, instructing the team to make payments, all with double transparency both on each Ecosystem Funds page, and on the Open Collective platform.

### But why build another funding tool?

At the launch of the Open Source Pledge we saw a huge challenge for organisations wishing to join: that they would have to decide how to distribute funds, and create a process to do so.

We take all that pain away, while developing and supporting the ecosystem of other funding solutions while addressing the HUGE gap that we have seen in open source funding solutions over the past decade: We’re only funding the software we see, not the software we actually use.

### Why should we fund the most used software?

Our view is that, regardless of how you choose to judge an open source project, the projects that are the most used are the most critical. That’s it, end of argument.

But if you need a defence of that position: if your goal is to reduce your risk, or otherwise improve the ‘health’ (I know that’s a polarising term, but let’s go with it for the moment) of your open source dependencies then you have to support the whole ecosystem, not just the projects that appear in a cherry-picked group of SBOMs. If one of the unseen dependencies in your stack fails, your stack fails. And the likelihood that these dependencies, which are typically the most used in a given ecosystem, are your dependencies is extremely high.

In [our talk at FOSDEM](https://fosdem.org/2025/schedule/event/fosdem-2025-5576-open-source-funding-you-re-doing-it-wrong/) we demonstrated that there is a huge disparity between funding in open source that we can see, and the actual use (again, ecosyste.ms monitors over 230m repositories and nearly 11m packages) of those packages. We also showed that the usage we see within open source correlates well enough with downloads to say usage within publicly available software is representative of all use. This is key for Ecosystem Funds as we are asking companies to trust that our method for allocating funding will protect them individually.

But we have a problem:

### What’s missing?

[ecosyste.ms](https://ecosyste.ms) (and by extension Ecosystem Funds) tracks around $52m of total funding for open source projects on Open Collective. It also tracks the funding status (but importantly not amounts) of sponsors on GitHub Sponsors. That is a speck in the ocean of the existing support dedicated to open source today.

The recently embattled [NSF’s POSE program](https://www.google.com/search?client=safari&rls=en&q=NSF+POSE&ie=UTF-8&oe=UTF-8) alone has distributed hundreds of millions of funding to open source communities, and the projects that they support. But it’s impossible to track the vast majority of resources that are dedicated to open source today, both directly in cash and indirectly through human labour. Without that we cannot make collectively informed decisions about where best to invest our efforts, and our donations.

Without more open data about the support for open source we can never say we are sustaining our collective, critical, digital infrastructure.

So we call on open source funders, other funding platforms, and open source projects themselves to share data, in a programmatically readable manner, about the resources they have today, and the resources they are currently in need of. We pointed to the [360Giving Data Standard](https://www.360giving.org/about/data-standard/), and the [Open Contracting Data Standard](https://standard.open-contracting.org/latest/en/) as two examples of how we could do this today but we are more than happy to lead an effort to standardise this data over the coming months — contact [hello@ecosyste.ms](mailto:hello@ecosyste.ms) to join the conversation.

Finally we would also like to call out the work of organisations like Invest in Open Infrastructure, whose [State of Open Infrastructure Report](https://investinopen.org/data-room/state-of-oi/) is doing some of the heavy lifting that we need to build a more representative picture of open source support today. We’d love to see more work like this by and/or funded by open source sponsors in the near future.
