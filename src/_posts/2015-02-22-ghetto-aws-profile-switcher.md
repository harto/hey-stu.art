---
layout: post
title: Ghetto AWS profile switcher
---

> All problems in computer science can be solved by another level of
> indirection, except for the problem of too many levels of indirection.
> <cite>&mdash; Kevlin Henney</cite>

I have three sets of AWS credentials: two for work and one for personal
projects. In the absence of a tool for managing AWS profiles, I cobbled a
solution together using symlinks and bash functions.

My implementation of a profile is a symlink to a [credentials file][aws-creds],
which defines a pair of AWS access keys and by convention lives at
`~/.aws/credentials`. I keep the various sets of credentials in
`~/.aws/profiles.d`:

    ~ $ ls ~/.aws/profiles.d
    99designs       personal        workbench

    ~ $ readlink ~/.aws/credentials
    /Users/stuart/.aws/profiles.d/workbench

Here's some bash to manage the symlinking:

{% gist harto/f56157e6ed11aeb522ab %}

And here's how I use it:

    ~ $ aws-profile
    usage: aws-profile <profile>

    Available profiles:
     - 99designs
     - personal
     - workbench *

    ~ $ aws-profile personal
    profile personal activated

Note: since I initially wrote this stuff, my colleague implemented [something
much better for OS X][aws-keychain].


 [99d]: https://99designs.com/
 [aws-creds]: http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-config-files
 [aws-keychain]: https://github.com/pda/aws-keychain
