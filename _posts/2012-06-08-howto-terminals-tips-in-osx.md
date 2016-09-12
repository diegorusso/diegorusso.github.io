---
title: 'HOWTO: Terminal''s tips in OSX'
categories:
- personal
- italian
- osx
- apple
- job
- howto
- geek
tags:
- python
---
Another useful and quick post about tips from OSX Terminal that let you to
save a lot of time. So just open a Terminal and try them.

  * `open .` opens the current folder. `open file.png` opens the image file.png. You can `open` whatever you want.
  * `pbcopy` and `pbpaste` copy/paste to/from the clipboard
  * `python -m SimpleHTTPServer 8000` starts a webserver (using python)
  * `say Hello there` says "hello there", really! :)
  * `!!` runs the last command
  * `mdfind` is Spotlight from command line
  * `ctrl-a` and `ctrl-e` go to the beginning/end of the line
  * `cd`, do you really need an explanation?
  * `/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &amp;` your screen saver as you desktop wallpaper - _useless_
  * `emacs -batch -l dunnet` is a text-based game :)
  * `top -o vsize` or `top -o cpu` tell you who is eating your memory/CPU?
  * `SetFile file -a V` makes files invisible
  * `diskutil` manages disks and images
  * `hdiutil burn /path/to/iso` burns an ISO to a CD/DVD
  * `/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -s` scans WIFI networks
  * `atl + mouse drag` is the rectangular selection
  * `afplay ~/path/to/file.mp3` plays an mp3 file
  * `sudo /System/Library/CoreServices/Finder.app/Contents/MacOS/Finder` opens Finder with root permissions (pay attention!!!)
  * `cat somefile.txt | say` literally says the content of somefile.txt
  * `history|awk '{print $2}'|awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c|sort -r` gives you the numbered list of most recent commands
  * `sudo softwareupdate -i -a` launches the software update
  * `ctrl + R` startes a reverse search of your commands
  
Do you have other useful tips? Post them in the comment! :)

Source and other tips, [here](http://apple.stackexchange.com/questions/5435/what-are-some-tips-or-tricks-for-terminal-in-mac-os-x).
