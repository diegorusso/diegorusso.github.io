---
title: 'HOWTO: check if I am in a screen session'
categories:
- linux
- howto
tags:
- howto
- linux
---

```
$ echo $STY
```

If you are in a screen session, you'll see something similar to

```
$ echo $STY  
5413.ttys001.leonard
```

If you aren't, you'll see nothing.

```
$ echo $STY

$
```
