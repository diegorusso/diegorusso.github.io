---
title: 'HOWTO: fix offending key in SSH'
categories:
- personal
- italian
- osx
- linux
- job
- howto
tags:
---
When you perform an ssh connection to a remote machine, the first time you will
be prompted to say 'yes' to authenticate the remote host.  
This feature is controlled by `StrictHostKeyChecking` parameter and it is
set to yes by default. From security point of view, **this option should be
enable** because it protects you and your system against trojan horse attacks.  
Sometimes you need disabling it temporarily. To disable it you can do via
console or via config file.

**Via console:**

```
$ ssh -o 'StrictHostKeyChecking no' username@remotemachine
```

**Via config file**, adding line below to `/etc/ssh_config` (OSX) or `/etc/ssh/ssh_config` (linux):

```
StrictHostKeyChecking no
```

Once you turn it on, you can solve "offending key" deleting it from
`~/.ssh/know_hosts` through this terminal command:

```
$ sed -i '19d' ~/.ssh/known_hosts
```
where 19 is the line containing offending key.
If you have suggestions, troubles or you feel alone, comment this post! :)
