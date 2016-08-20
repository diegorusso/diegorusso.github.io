---
title: 'HOWTO: "ip_conntrack: table full, dropping packet"'
categories:
- computer
- linux
- job
- howto
- geek
tags:
- howto
---
I used to manage a server based on linux and once I had this strange message:

```
$ ip_conntrack: table full, dropping packet
```

  
One of the effects of this message is that you aren't able to make and receive
new connections.  
To solve that is enough increase `ip_conntrack_max` value. As first step check
the current value typing:

```
$ cat /proc/sys/net/ipv4/ip_conntrack_max
65536
```

Now, increase this value typing:

```
$ echo 131072 > /proc/sys/net/ipv4/ip_conntrack_max
```

Generally the right value of `ip_conntrack_max` is set to the **total MB of
RAM multiplied by 16**. If you have 8GB RAM (8192 MB), the value should be
131072.

