---
layout: post
title: Finding circular deps in Node.js projects
---

[Circular dependencies in Node.js modules][circular-deps] can be tricky to find
if you create them accidentally. I wrote [a simple bash script][find-requires]
that lists intermodule dependencies and prints them in a way that
[tsort(1)][tsort] understands.

Combining these two programs can list circular dependencies in a project:

```
$ find-requires -e node_modules ~/my-project | \
  tsort >/dev/null
tsort: cycle in data
tsort: lib/a.js
tsort: lib/b.js
tsort: lib/c.js
```

(I discard the normal output of `tsort` since cycles are printed to `stderr`.)

There are two things that make this solution slightly interesting:

 1. You can often get reasonable results quickly using a naive solution. This
    dependency "parser" simply greps sources for `require()` calls, which isn't
    perfect, but is simple and was very quick to implement.

 2. `tsort` is a good example of the [Unix Philosophy][unix-philosophy]. It's
    easy to plug programs like that together, even beyond their original use. I
    wish more utility authors embraced this philosophy :-)


 [circular-deps]: http://selfcontained.us/2012/05/08/node-js-circular-dependencies/
 [find-requires]: https://github.com/harto/find-requires
 [tsort]: https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/tsort.1.html
 [unix-philosophy]: http://www.catb.org/esr/writings/taoup/html/ch01s06.html
