---
title: 'HOWTO: use vim as default editor for git'
categories:
- Uncategorized
- howto
tags:
- howto
- git
- vim
---
Pick your favorite from the following ones:

    
    
    $ export GIT_EDITOR=vim  
    
    $ git config --global core.editor "vim"  
    
    $ export VISUAL=vim  
    
    $ export EDITOR=vim  
    
    

  
Git will respect this order.

