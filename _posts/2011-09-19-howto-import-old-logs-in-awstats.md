---
title: 'HOWTO: import old logs in AWStats'
categories:
- programming
- linux
- job
- howto
tags:
- howto
- python
- apache
---
[AWStats](http://awstats.sourceforge.net/) is a great software to analyse
[Apache](http://www.apache.org/) logs for having statistics about your sites.
Unfortunately it doesn't offer a tool to import old logs into AWStats. For
that I've created a small python script to do this. Here you go:

```python
import commands
raw_data = commands.getoutput('ls -rt /var/log/apache2/wespot-access80.log.*.gz')
logs = raw_data.splitlines()
for log in logs:
commands.getoutput('zcat %s > /tmp/tmplog' % log)
commands.getoutput('/usr/lib/cgi-bin/awstats.pl -update -config=config.site.com -LogFile=/tmp/tmplog')
```
  
If you have problems, comment this post! :)
