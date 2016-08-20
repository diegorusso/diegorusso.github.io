---
title: 'HOWTO: disable SSH host key checking'
categories:
- Uncategorized
- howto
tags:
- howto
- ssh
---
Just once:

```
$ ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no host.example.com
```

Permanently, add the following to your ssh configuration (usually in
`~/.ssh/config`):

```
Host host.example.com  
    StrictHostKeyChecking no  
    UserKnownHostsFile=/dev/null
```
