---
layout: post
title: A Windows 10 development environment
---

I'm suddenly without a Mac for the first time in quite a while, and the only
thing nearby that resembles a computer is my Microsoft Surface Pro 4.

This is a description of my efforts to use the Surface for software development.

I'm used to doing pretty much all my work in Emacs and Bash, so that's what I
hope to get working.


## Native tools

I decided to install and run Emacs and Git natively, and try to run everything
else in some kind of contained or virtualised development environment. (I like
the GUI version of Emacs better than the console version, and I need Git so I
can use [Magit][magit] within Emacs.)

 [magit]: https://magit.vc/

### Emacs

Emacs has a [native Windows build][emacs]. I tweaked a couple of things to fix
[my config][emacs.d]:

 * deleted a file in my config named `$<`, which couldn't be checked out by Git
 * set a `HOME` environment variable to `C:\Users\<Name>` so that `~` resolved
   as expected (without this, `~` resolves to `C:\Users\<Name>\AppData\Roaming`)
 * and most importantly of all, hid the menu bar via `(menu-bar-mode -1)`

Surprisingly, the rest of my config worked fine, except for things like
[find-things-fast][ftf] (which is missing the underlying `find` command).

I haven't completely figured out [the keyboard situation][emacs-kbd] yet. In
particular, I want to use <kbd>M-TAB</kbd> for autocomplete, but that's used by
Windows.

 [emacs]: https://www.gnu.org/software/emacs/download.html
 [emacs.d]: https://github.com/harto/emacs.d
 [emacs-kbd]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Windows-Keyboard.html
 [ftf]: https://github.com/eglaysher/find-things-fast

### Git

Git also has a native Windows installer. It didn't seem like it would be easy
to use an SSH keypair to authenticate against e.g. GitHub, so I also installed
the [Git Credential Manager][gcm]. I think this uses OAuth instead, which works
OK as long as you remember to use `https://github.com/<user>/<repo>.git`
instead of `git@github.com:<user>/<repo>.git` URLs.

 [gcm]: https://github.com/Microsoft/Git-Credential-Manager-for-Windows


## UNIX environment

My goal is to try and emulate an *nix environment, so I figured I have these
options:

 * [Cygwin][cygwin] &mdash; a collection of common Linux tools ported to Windows
 * [Windows Subsystem for Linux (WSL)][wsl] &mdash; an Ubuntu distro running
   atop a Linux kernel compatibility layer)
 * virtualisation &mdash; [VMWare][vmware], [VirtualBox][vbox], etc.

Of these, WSL seemed the most interesting since it promised the lowest friction
and is an officially-supported (beta) Windows feature.

(A VM would probably be the most reliable option, but it seemed a little fiddly
to set up, particularly if you go down the path of using X Windows.)

Once I configured WSL, I was able to install my various [dotfiles][dotfiles] and
everything was more-or-less working: I could write this post and run Jekyll in
development mode to see how it looked.

My biggest issue so far has been the reliability of WSL. I installed the Windows
10 Creators Update in the hope that would help, but I still encounter frequent
freezes. The system seems to get into a broken state where reinstalling WSL is
the only fix. I think it's a cool feature of Windows though; hopefully they can
fix its issues.

 [cygwin]: https://www.cygwin.com/
 [wsl]: https://msdn.microsoft.com/commandline/wsl/about
 [vmware]: https://my.vmware.com/en/web/vmware/free#desktop_end_user_computing/vmware_workstation_player/12_0
 [vbox]: https://www.virtualbox.org/wiki/Downloads
 [dotfiles]: https://github.com/harto/dotfiles
