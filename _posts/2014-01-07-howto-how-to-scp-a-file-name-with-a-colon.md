---
title: 'HOWTO: How to scp a file name with a colon'
categories:
- howto
- english
tags:
- scp
- linux
---
Add `./` in front of the file name:

```
$ scp ./file:with:colon.txt user@host.com:/remote/path
```
