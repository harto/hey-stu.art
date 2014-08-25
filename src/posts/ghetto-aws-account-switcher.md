---
layout: post
title: Ghetto AWS profiles
---

> All problems in computer science can be solved by another level of
> indirection, except for the problem of too many levels of indirection.

I have three sets of AWS configuration files: two for [work][99d], and one for
[personal projects][moving-to-s3]. I didn't find an appealing pre-existing tool
for managing AWS profiles, so I cobbled a solution together using symlinks and
bash functions.

Profiles look like this:

    ~ $ tree ~/.aws/profiles
    /Users/stuart/.aws/profiles
    ├── 99designs
    │   ├── credentials
    │   ├── credentials.json
    │   └── s3cfg
    ├── personal
    │   ├── credentials
    │   ├── credentials.json
    │   └── s3cfg
    └── workbench
        ├── credentials
        ├── credentials.json
        └── s3cfg

The active profile is a symlink pointing to one of these directories:

    ~ $ ls -l ~/.aws/profiles/.active
    lrwxr-xr-x  1 stuart  staff  37 23 Aug 15:18 /Users/stuart/.aws/profiles/.active -> /Users/stuart/.aws/profiles/99designs

I have symlinks in predictable locations that point to the files in the current
profile directory:

    ~ $ ls -l ~/.aws
    total 32
    lrwxr-xr-x  1 stuart  staff   28  3 Jul 21:44 credentials -> profiles/.active/credentials
    lrwxr-xr-x  1 stuart  staff   33  3 Jul 21:44 credentials.json -> profiles/.active/credentials.json
    lrwxr-xr-x  1 stuart  staff   22  3 Jul 21:51 s3cfg -> profiles/.active/s3cfg

Finally, I have some bash that activates a given profile by updating the
`.active` symlink:

<code data-gist-id=""></code>

I use it like this:

    ~ $ aws-profile
    usage: aws-profile <profile>

    Available profiles:
     - 99designs
     - personal *
     - workbench

    ~ $ aws-profile 99designs
    profile 99designs activated


 [99d]: https://99designs.com/
 [moving-to-s3]: something
