---
title: 'HOWTO: fix offending key in SSH'
categories:
- osx
- technology
- linux
- job
- howto
tags:
- howto
---
When you perform an ssh connection to a remote machine, the 1st time you will
be prompted to say 'yes' to authenticate the remote host.  
This feature is controlled by "_StrictHostKeyChecking_" parameter and it is
set to yes by default. From security point of view, **this option should be
enable** because protect you and your system against trojan horse attacks.  
Sometimes you need disabling it temporarily. To disable it you can do via
console or via config file.

**Via console:**
    
    
    $ ssh -o 'StrictHostKeyChecking no' username@remotemachine

  
**Via config file**, adding below line to /etc/ssh_config (OSX) or /etc/ssh/ssh_config (linux):
    
    
    StrictHostKeyChecking no

  
Once you turned it on, you can solve "offending key" deleting it from
"_~/.ssh/know_hosts_" through this terminal command:

    
    
    # sed -i '19d' ~/.ssh/known_hosts

  
where 19 is the line containing offending key.

If you have suggestions, troubles or you feel alone, comment this post! :)

