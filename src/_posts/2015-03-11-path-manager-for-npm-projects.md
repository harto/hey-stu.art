---
layout: post
title: $PATH manager for npm projects
---

I wrote this dumb script to add npm project binaries to `$PATH`. These binaries
live in `$project/node_modules/.bin`, which makes for some pretty clunky
invocations, e.g. `node_nodules/.bin/jsx --watch src build`, instead of
`jsx --watch src build`.

It's possible to add `./node_modules/.bin` directly to `$PATH`, but that doesn't
work if you're in a project subdirectory. It's probably also bad from a security
perspective.

{% gist harto/4453bf0a9babb7b4c7d2 %}
