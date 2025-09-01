---
layout: post
title: "Rate limiting: the right way..."
date: 2025-09-01 14:00 +0000
---

__To bring the traffic down to sustainable levels and encourage efficient and responsible use we will be introducing rate limits across our services.__

As we mentioned last week: ecosyste.ms is at capacity. Revenues and donations to our non-profit are no longer covering the cost of serving 500GB of data and 40m requests daily. 

[A few weeks ago](https://blog.ecosyste.ms/2025/08/15/building-on-ecosystems.html) we introduced user agent tracking in order to get a better picture of our user’s behaviour. Our findings were…. interesting. Our biggest users make nearly 3m requests to our packages service over a three day window. To put that into context: every day around 30,000 new versions of packages tracked by ecosyste.ms are published. So, to encourage more efficient and responsible use of our services, and to enable us to support that service now and into the future, we will be introducing rate limits, the right way:

### What you need to do:

Inspired by [OpenAlex](https://blog.ecosyste.ms/2025/08/15/building-on-ecosystems.html), who themselves were inspired by Crossref, we’re going to split API users into two pools: the polite pool, and the common pool. 

The polite pool will have more consistent response times, ‘it’s where you want to be’ as OpenAlex say. In order to get into the polite pool you will need to provide a contact email address, so that we can contact you should we need to rate limit or block your access. You can do this by:

- adding `mailto=you@example.com` as a parameter to your API request, like this: 
- Add `mailto:you@exaple.com` somewhere in your user-agent request header

The common pool is for everyone else. It will have less consistent response times, especially during peak periods as we serve polite requests more frequently. 

### Next steps:

For the next couple of months we will continue to run the service without strict rate limits. Meanwhile we will work with our users to establish a policy that treads the line between supporting non-commercial applications, research, and policy development, while providing additional revenue to cover the cost of hosting and maintaining ecosyste.ms’ services. 

In the meantime you can support the project by:

👩‍💻 [Contributing to ecosyste.ms on GitHub](https://github.com/ecosyste-ms) <br/>
🤝 [Purchasing a data licence](https://ecosyste.ms/commercial) <br/>
🙏 [Donating on Open Collective](https://opencollective.com/ecosystems)
