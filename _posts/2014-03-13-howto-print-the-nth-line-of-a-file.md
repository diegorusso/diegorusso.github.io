---
title: 'HOWTO: print the nth line of a file'
categories:
- personal
- italian

- howto
tags:
- sed
- awk
---

```
$ awk 'NR==1524' file.txt # print the 1524th line of the file using awk  
$ sed -n '1244p' file.txt # print the 1244th line of the file using sed
```
