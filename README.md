[![Build Status](https://github.com/purcell/emacs.d/workflows/CI/badge.svg)](https://github.com/purcell/emacs.d/actions)
<a href="https://www.patreon.com/sanityinc"><img alt="Support me" src="https://img.shields.io/badge/Support%20Me-%F0%9F%92%97-ff69b4.svg"></a>

# A reasonable Emacs config

This is my emacs configuration tree, continually used and tweaked
since 2000, and it may be a good starting point for other Emacs
users, especially web developers. These days it's
somewhat geared towards OS X, but it is known to also work on Linux
and Windows.

Emacs itself comes with support for many programming languages. This
config adds improved defaults and extended support for the following, listed
in the approximate order of how much I use them, from most to least:

* Haskell / Purescript / Elm / OCaml
* Ruby / Ruby on Rails
* SQL
* CSS / LESS / SASS / SCSS
* Javascript / Typescript
* HTML / HAML / Markdown / Textile / ERB
* Common Lisp (with Slime)
* Python
* Rust
* Clojure (with Cider and nRepl)
* PHP
* Erlang

Included is a nice setup for in-buffer autocompletion with
[corfu](https://github.com/minad/corfu), and minibuffer completion using
[vertico](https://github.com/minad/vertico).

`flymake` (re-using backends from [flycheck](http://www.flycheck.org))
is used to immediately highlight syntax errors in Ruby, Python,
Javascript, Haskell and a number of other languages.

LSP support is provided using `eglot`.

Various popular Emacs tools are included and configured here, such as
`magit`, `docker.el`, `projectile`, `org-mode` etc., but the focus is moderate

## Supported Emacs versions

Use the latest released Emacs version available to you. The author
typically uses the latest stable version.

The config should run on Emacs 27.1 or greater and is designed to
degrade smoothly - see the CI build - but many enhancements may be
unavailable if your Emacs is too old, and in general you should try
to use the latest stable Emacs release like I do.

## Other requirements

To make the most of the programming language-specific support in this
config, further programs will likely be required, particularly those
that flycheck or flymake use to provide on-the-fly syntax checking.

## Installation

To install, clone this repo to `~/.emacs.d`, i.e. ensure that the
`init.el` contained in this repo ends up at `~/.emacs.d/init.el`:

```
git clone https://github.com/geyu210/emacs.d.git ~/.emacs.d
```

Upon starting up Emacs for the first time, further third-party
packages will be automatically downloaded and installed. If you
encounter any errors at that stage, try restarting Emacs, and possibly
running `M-x package-refresh-contents` before doing so.


## Updates

Update the config with `git pull`. You'll probably also want/need to
update the third-party packages regularly too, because that's what I
do, and the config assumes it:

<kbd>M-x package-list-packages</kbd>, then <kbd>U</kbd> followed by <kbd>x</kbd>.

You should usually restart Emacs after pulling changes or updating
packages so that they can take effect. Emacs should usually restore
your working buffers when you restart due to this configuration's use
of the `desktop` and `session` packages.

## Changing themes and adding your own customization

To add your own customization, use <kbd>M-x customize</kbd>, <kbd>M-x
customize-themes</kbd> etc. and/or create a file
`~/.emacs.d/lisp/init-local.el` which looks like this:

```el
... your code here ...

(provide 'init-local)
```

If you need initialisation code which executes earlier in the startup process,
you can also create an `~/.emacs.d/lisp/init-preload-local.el` file.

If you plan to customize things more extensively, you should probably
just fork the repo and hack away at the config to make it your own!
Remember to regularly merge in changes from this repo, so that your
config remains compatible with the latest package and Emacs versions.

*Please note that I cannot provide support for customised versions of
this configuration.*

## Support / issues

If you hit any problems, please first ensure that you are using the latest version
of this code, and that you have updated your packages to the most recent available
versions (see "Updates" above). If you still experience problems, go ahead and
[file an issue on the github project](https://github.com/purcell/emacs.d).

-Steve Purcell

<hr>


[💝 Support this project and my other Open Source work](https://www.patreon.com/sanityinc)

[💼 LinkedIn profile](https://uk.linkedin.com/in/stevepurcell)

[✍ sanityinc.com](http://www.sanityinc.com/)
