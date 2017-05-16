---
title: Goodbye Wordpress, hello Github (Jekyll)
categories:
- personal
- english
tags:
- blog
- jekyll
- wordpress
---

It has been a while I'm not writing in this blog. I have my reasons but the
main one is because I've been busy migrating the whole website from
[Wordpress](https://wordpress.org) to Github (time ago [I also moved my CV on
Github]({{ site.url }}/2015/03/27/my-cv-on-github/)). To be more precise I
moved to [Github Pages](https://pages.github.com).

With Github pages you can set up a website for every project you have on Github
or you can set up a "personal" website (linked to your *username.github.io*
repository on Github).

The underlying technology is [Jekyll](https://jekyllrb.com) (yes, written in
Ruby... :-/).
You need to install it on your computer is you are migrating an existent
website to Jekyll or if you want to customise your website even more.
The reasons I move to Github Pages are summed in the following video

{% include video id="2MsN8gpT6jY" provider="youtube" %}

The old website was composed from:
* digitalocean.com server, which I strongly suggest
([grab my referral!](https://m.do.co/c/a9ba99ae5c7c))
* Wordpress installation (theme and software updates)
* Mysql installation (backups, data restore, schema upgrades, etc...)
* scripting around maintenance

The overhead for a simple website was simply too much: software updates and
upgrades, schema migrations, backups, data restores, dying processes,
dying processes and many other tasks which were time consuming.

The new website is composed from:
* git repository *(yes, that's right!)* :)

No databases, no schemas, no servers, no passwords, no hacks, no software
updates, no dying processes, no downtime (well there might be, but Github will
fix it for me) and **backups are already included!**

So if you already use Github, **wait no more!** Set up your website now!

If you want to migrate your existent website to Jekyll... Well, **good luck!** :)
Joking apart, the process might not be so straightforward as a lot of things
need to be ported/configured:

* **posts and pages**: Jekyll is blog aware so you can export to it from the
majority of blog softwares ([check it here](http://import.jekyllrb.com)).
Although my blog was on Wordpress **this took me plenty of time** as now always
the export works as expected. I've used both scripts and manual work to do a
proper migration
* **comments**: as there is no database you need to use an external service.
I've chosen [DISQUS](https://disqus.com)
* **URLs**: I've mapped as much as I could the old URLs with the new ones
* **theme**: I went for [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/)
as the documentation is just excellent and I love the clean design!
* **custom code**: depends how many plug-ins you used in your previous platform,
you might end up in writing plenty of custom code to keep the same
functionalities

Well, if you have any question I bet you can find my contact or comment this post

**Blogging with `VIM` and publishing with `git push` is just priceless! :)**
