---
layout: post
title: Ecosyste.ms Conference talk at EasyBuild User Meeting
date: 2024-05-19 21:41 +0100
---

In this blog post, I'm sharing the transcript of a talk I gave at the 9th EasyBuild User Meeting. The talk covers the Ecosyste.ms project, which I've been working on for almost two years. It delves into the challenges and solutions involved in understanding and exploring open-source landscapes and communities. 

Here's the video of the talk:

<iframe width="560" height="315" src="https://www.youtube.com/embed/o9lzy8dlvtM?si=NjolcuJQSfe6EBTP" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Here's the slides for the talk:

<iframe class="speakerdeck-iframe" style="border: 0px; background: rgba(0, 0, 0, 0.1) padding-box; margin: 0px; padding: 0px; border-radius: 6px; box-shadow: rgba(0, 0, 0, 0.2) 0px 5px 40px; width: 100%; height: auto; aspect-ratio: 560 / 315;" frameborder="0" src="https://speakerdeck.com/player/ef7175125e4c4cd99c7167981d8381b5" title="Ecosyste.ms Conference talk at EasyBuild User Meeting" allowfullscreen="true" data-ratio="1.7777777777777777"></iframe>

And here's the transcript:

# Exploring Open Source Software Landscapes

Thank you very much for inviting me here to speak about my project. I hope you all had a good lunch and are enjoying the conference so far.

Today, I'm going to talk to you about a project I've been working on for almost two years now called Ecosyste.ms and some of the challenges I wanted to solve in understanding and exploring open-source landscapes and communities.

A little bit about me: my name is Andrew Nesbit. I'm in the southwest of the UK, out in the countryside. It's raining here today, which is the same as every day in England right now. I've been doing open-source software development for coming on to 15 years now in different forms and have been full-time in open-source for maybe three years now, working in areas of developer tooling and ways of being able to understand open-source software, the metadata, and the community efforts behind that for enabling other people to do more interesting research.

I also like to include my dogs as a little palate cleanser just to smooth everyone's brains over a little bit. They're at the groomers today, so hopefully there won't be any barking. We've got Blossom, Felix, Mabel, and Luna.

## Agenda

First, I'll talk about what Ecosyste.ms is. Then, we’ll deep dive into different pieces of the project, some interesting implementation details, fun facts, and the scale of open-source data. We’ll look at some case studies and examples of ways people have used the data and APIs available in this project to build interesting research and other tools. Finally, we'll end with a bit of a roadmap for the future and close out with questions.

## What is Ecosyste.ms?

Perhaps the better question is: why is Ecosyste.ms? Why did I build this project?

When it comes to exploring and understanding how open-source software ecosystems and communities function, there are all kinds of interesting approaches you can take and stories you can extract from looking at the data. Because everything is so open, it makes it very easy to do research into things like comparing different kinds of communities. For example, does the R community have any similarities to the Python community, or what kinds of differences are there from a purely numerical point of view?

Because all of that data is accessible and public, we can do some really interesting comparisons and try to find some intriguing stories within that data. If you can mine that data effectively, you can also discover the most interesting or useful projects within an open-source community. This often means comparing individual projects to determine which one is more effective or in a better state, as well as trying to cluster them together.

All of this needs good data to work effectively. If you just use something like GitHub stars, you often only highlight projects that have a lot of attention, not necessarily projects that are critical infrastructure or that are low-level pieces that aren't moving particularly quickly and don't have a lot of marketing effort behind them. They are the fundamentals for a community that people build on top of and don’t necessarily even notice.

You can also look for trends within communities and the wider open-source community to see the rate of growth, which is kind of crazy right now. The amount of new projects being published every day is mind-blowing. The amount of security vulnerabilities being published every week has become almost untenable for many reviewers trying to keep on top of the activity. However, because everything is open, we can use that data to effectively empower researchers to find the most critical issues that would otherwise be very difficult to find.

## Recent Efforts and Challenges

Recently, I’ve been working with Open Collective to recognize funding and areas of open source that are critical but maybe under-maintained. This pops up in the news quite regularly with various projects having people burnt out or in a state where they can't sustain the work. Being able to highlight these kinds of issues is something I'm very interested in enabling by making that data available in a helpful way.

Ultimately, what all of these efforts push towards is if you have the data, you can make data-based decisions. This then enables you to reason about why you think certain actions should be taken. You can track that data over time and see if the actions, like injecting funding or adding extra maintenance or security work, lead to the desired changes.

Improving open-source software improves all software because a significant percentage of all software projects use open-source in some form. Since everyone uses software now, improving open-source software means we can improve the whole world.

## Challenges in Collecting Data

There are quite a few challenges involved in collecting this data and being able to collate and normalize it across the various forms it comes in. Different package manager registries have different APIs or lack them for extracting data efficiently. Some package managers have good systems for keeping up to date, while others require rescan, which can be intensive for larger package managers. 

You also encounter security problems, varying rate limits, and restrictions on different registries and source code hosts. There’s a lot of data to collect, and handling personally identifiable information requires caution. Additionally, the rise of spam and malicious packages being published has become a significant issue.

One of the biggest things I noticed, and part of the reason for creating this service, was because collecting data for very large registries involves significant challenges. As you dive deeper into different software ecosystems, each one has a different API, data format, and way of crawling to fetch data. This leads to diminishing returns for adding support.

## Conclusion and Future Directions

In conclusion, Ecosyste.ms aims to address these challenges by providing a comprehensive way to collect, normalize, and use open-source data effectively. The project is ongoing with lots of potential additions and improvements.

Thank you for listening. If you have any questions, feel free to ask now, and we should have about 15 minutes for questions.
