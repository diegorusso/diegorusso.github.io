---
title: 'HOWTO: Ctrl/Alt/Shift keys not working in VMWare'
categories:
- personal
- italian

- linux
- howto
tags:
- linux
- sed
- vmware
---
Sometime when using VMWare under linux, it makes impossible the usage of
Ctrl/Alt/Shift keys on the virtualised OS. The solution is quite easy though.
Open a terminal and type the following command:

```
$ setxkbmap
```

That's it.
