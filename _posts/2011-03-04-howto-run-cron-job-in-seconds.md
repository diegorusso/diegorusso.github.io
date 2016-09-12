---
title: 'HOWTO: run cron job in seconds'
categories:
- personal
- italian
- osx
- linux
- job
- howto
tags:
---
If you know what [cron](http://en.wikipedia.org/wiki/Cron) is, you also know
that the minimum time to execute a job is a minute. There is a small trick to
execute a cron job every X seconds. For example if you need to run a cron job
**every 30 seconds** (it's a common case), you can do it adding these lines to
crontab:

```
* * * * * root sh /path/to/myscript.sh  
* * * * * root sleep 30 && sh /path/to/myscript.sh
```

Both lines execute the job every minute, but the **second one waits 30
seconds** using [`sleep`](http://en.wikipedia.org/wiki/Sleep_(Unix)) command
from bash.

If you have any question, comment this post. :)
