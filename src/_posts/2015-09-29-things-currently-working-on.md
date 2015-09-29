---
layout: post
title: Things I'm currently working on
---

I feel guilty about not writing. I'm tinkering with a couple of things that
might be worth a post, but who knows when I'll finish them? In the meantime,
here's what I'm up to:


## [Tetris in ClojureScript][tetris]

It's been a long while since I did any Clojure- or games-related programming, so
I'm easing back into it with yet another Tetris clone. Some things that I hope
to learn: evaluate the performance of ClojureScript as a games programming
environment (in terms of both speed and productivity), are macros useful for
eliminating boilerplate HTML canvas operations without sacrificing performance,
etc.

The ClojureScript ecosystem has come a long way in the last couple of years; I'm
using [Figwheel][figwheel] in development and it's very nice indeed.


## [A system for keeping my dog off the couch][sauron]

This is basically an excuse to use my Raspberry Pi 2. I've hooked the Pi up to a
webcam pointed at my couch. A program watches the camera input for signs that my
dog has jumped onto the couch, and will (eventually) do something(?) to dissuade
him.

It's probably ridiculous, but it's a nice excuse to do some Python programming
and learn about OpenCV.


 [tetris]: https://github.com/harto/tetris-cljs
 [figwheel]: https://github.com/bhauman/lein-figwheel
 [sauron]: https://github.com/harto/sauron
