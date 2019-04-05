---
layout: default
title: Stuart Campbell &mdash; Software Engineer
---


# Work


## Remix

 * Software Engineer (2017&mdash;)

[Remix][remix] helps cities manage all aspects of transportation. I work on the
transit team, building features that help transit planners make more informed
decisions about transit in their cities.

Some things I've worked on include:

 * improvements to the Jane travel isochrone feature. I led a project to revamp
   the isochrone UI, adding several new options to the React frontend, altering
   the Cython backend, experimenting with WebGL performance improvements to the
   isochrone visualization, and ensuring no regressions in API performance.
 * more detailed costing estimates in the UI. This required building several new
   React UI components and breaking out intermediate costing calculation results
   from within the Rails backend.

I also worked on the transit scheduling product, mostly within the Cython/Python
backend, but also in the React/Redux frontend, building:

 * a system to generate multiple schedules in parallel, and present these
   possible solutions to transit schedulers in an intuitive way.
 * a system for exporting Remix schedules in a 3rd-party software format, giving
   our customers more flexibility in deciding their software tools.

## Spot

 * Senior Software Engineer (2016&mdash;2017)

[Spot][spot] recommends places according to the friends and experts you trust.
I worked on the backend systems that support the [mobile app][spot-app],
including:

 * the API that powers the app and public website. This is a Node.js (Restify)
   app, backed by Postgres and Elasticsearch. It exposes a GraphQL-like
   interface to enable flexible and batch-efficient fetching of multiple
   (possibly nested) resources in a single request.
 * the content ingestion pipeline. This is also a Node.js system, running on
   AWS, that discovers venue data and expert reviews by crawling and parsing the
   web.

## 99designs

 * Senior Software Engineer (2013&mdash;2016)
 * Software Engineer (2012&mdash;2013)

[99designs][99d] is the world's largest online graphic design marketplace, with
a community of over a million registered designers.

I was the lead software engineer in 99designs' Oakland, CA office. My team
focused on the design- and designer-oriented parts of the platform. Some of the
things we built include:

 * [Discover][99d-discover] &mdash; showcases designs from the community and
   provides design inspiration for potential customers. This is a Rails app,
   running via Docker on AWS, and backed by hosted Elasticsearch.
 * [Profiles][99d-profiles] &mdash; individual designer portfolios. Designers
   can curate their cover images, crop and rearrange their designs, and offer
   fixed-price [design services][99d-services] to potential clients.

I was previously the lead developer of [Projects][99d-projects], a 1-to-1 design
collaboration platform that has grown into a significant revenue generator for
99designs.

I also wrote articles for 99designs' engineering blog, and open-sourced various
internal libraries.


## Rubicon Water

 * Software Engineer (2009&mdash;2012)

[Rubicon Water][rubicon] builds fully automated irrigation networks, including
remotely-operated control gates, demand management systems, and online ordering
for water consumers.

At Rubicon I built J2EE desktop and web applications for water authorities and
consumers in regional Australia. I was the lead engineer of a JSF web interface
to the SCADAConnect system, which provided monitoring and control of remote
hardware. I also built desktop-based reporting tools for the Demand Management
System, which gives water authorities high-level insight into irrigation needs.


## DWS Advanced Business Solutions

 * Software Consultant (2007&mdash;2009)

## Future Medium

 * Web Developer (2004&mdash;2007)


## Education

 * Bachelor of Computing, University of Tasmania (2001&mdash;2003)


## United States work authorisation

I'm eligible for the E-3 visa, an Australian-specific work visa which takes
1&mdash;3 weeks to get. See [this E-3 infographic][e3] for more information.


 [99d-blog1]: http://99designs.com/tech-blog/blog/2013/07/01/thumbnailing-with-thumbor/
 [99d-blog2]: http://99designs.com/tech-blog/blog/2013/01/05/github-survivor/
 [99d-discover]: https://99designs.com/discover
 [99d-profiles]: https://99designs.com/profiles/489015
 [99d-projects]: https://99designs.com/projects
 [99d-services]: https://99designs.com/profiles/ludibes/services
 [99d]: https://99designs.com/
 [dws]: http://www.dws.com.au/
 [e3]: http://gdaysf.com/wp-content/uploads/2017/02/E3-visa-infographic.png
 [gh]: https://github.com/harto
 [remix]: https://www.remix.com/
 [rubicon]: https://www.rubiconwater.com/
 [spot-app]: https://itunes.apple.com/us/app/spot-best-places-according/id1054510328
 [spot]: http://spot.com/
 [squiz]: https://www.squiz.net/
