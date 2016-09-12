---
title: 'HOWTO: Firefox, fix profile in use'
categories:
- personal
- italian
- osx
- linux
- friends
- windows
- howto
tags:
---
If you use Firefox and sometime you can have a strange error that prevents its
execute:

_"Firefox is already running, but is not responding. To open a new window, you
must first close the existing Firefox process, or restart your system"_ (on OS
X: "_A copy of Firefox is already open. Only one copy of Firefox can be opened
at a time_").

A window like the one below will appear:

[![]({{site.url}}/images/firefox_profile.png){: .align-center}]({{site.url}}/images/firefox_profile.png)

No worries, the solution is pretty simple. It's enough **to delete** these
files:

  * Linux: `~/.mozilla/firefox/.parentlock` and `~/.mozilla/firefox/lock`
  * OSX: `~/Library/Mozilla/.parentlock`
  * Windows: `%APPDATA%Mozillaparent.lock`
  
Once deleted those files, launch again Firefox and it should work. If not,
drop me a comment.

PS: _[Stefano](http://www.stefano11.it/), diegor has come back :)_
