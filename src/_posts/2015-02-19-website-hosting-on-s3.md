---
layout: post
title: Website hosting on S3
---

[harto.org][src] is static HTML built with [Jekyll]. Until recently it lived on
a <abbr title="virtual private server">VPS</abbr> at [prgmr.com]. I realised I
could avoid dealing with OS updates, nginx, etc. if I served the site from an
[S3 bucket][s3].

The site is now served out of a bucket fronted by a [CloudFront][cloudfront]
distribution, making it very fast and eliminating any maintenance. Getting set
up was easy enough once I found [this guide][s3-guide]. However, I did run into
a couple of gotchas.


## Email forwarding

Email sent to [stuart@harto.org] is forwarded
to a Gmail address. I previously relied on [my domain registrar][namecheap] for
email forwarding, but that means using their DNS nameservers, which doesn't work
for S3-backed domains&mdash;you have to use [Route 53][route-53].

My solution was to pay a [3rd-party mail forwarding service][pobox] to handle
this for me. I could then set `MX` records in Route 53 for my domain, and mail
forwarding continued to work fine.


## Caching

CloudFront can either cache assets according to origin cache headers (e.g.
`Cache-Control`), or according to some minimum
<abbr title="time to live">TTL</abbr> setting in the distribution config.
Neither solution is particularly good for HTML pages, which you generally want
to update immediately when a change is published.

I have a feeling I can set the cache headers of individual objects in the S3
bucket. For now I'm manually invalidating objects in the cache on deployment,
which is pretty crummy. But I don't tend to change pages very often, so it's not
a deal-breaker.


 [src]: https://github.com/harto/harto.org
 [Jekyll]: http://jekyllrb.com/
 [prgmr.com]: http://prgmr.com/xen/
 [s3]: http://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html
 [s3-guide]: http://www.michaelgallego.fr/blog/2013/08/27/static-website-on-s3-cloudfront-and-route-53-the-right-way/
 [stuart@harto.org]: mailto:stuart@harto.org
 [cloudfront]: http://aws.amazon.com/cloudfront/
 [route-53]: http://aws.amazon.com/route53/
 [namecheap]: https://www.namecheap.com/support/knowledgebase/category.aspx/2214/email-forwarding
 [pobox]: https://www.pobox.com/
