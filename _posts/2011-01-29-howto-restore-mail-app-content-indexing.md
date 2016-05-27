---
title: 'HOWTO: restore Mail.app content indexing'
categories:
- osx
- technology
- apple
- howto
- geek
tags:
- howto
- test
---
[Mail](http://www.apple.com/macosx/what-is-macosx/mail-ical-address-book.html)
is a great mail client provided with OSX. It works very well, fully integrated
and fast. Sometimes it goes crazy and doesn't indexing the mails' content with
the impossibility to perform research based on it.

[![]({{site.url}}/images/mail.png)]({{site.url}}/images/mail.png)

  
After some research over the web, the problem stays in
"[spotlight](http://www.apple.com/macosx/what-is-macosx/spotlight.html)". Yes,
unlike _subject_, _from_ and _to_ fields, the content is indexed by spotlight.

To solve this issue, open a **Terminal** and type these commands:

    
    
    #> sudo mdutil -i off "/Volume/where/is/Mail"  
    
    #> sudo mdutil -i on "/Volume/where/is/Mail"  
    
    #> sudo mdutil -E "/Volume/where/is/Mail"

  
In according to [mdutil's man page](http://www.unix.com/man-
page/osx/1/mdutil/), latest command set the indexing content as "Erased" and
will be rebuilt.

Any trouble? Shoot a comment :)
