---
title: 'HOWTO: rename screen session'
categories:
- howto
tags:
- howto
- linux
---
Within screen:

    
    
    C-a :sessionname newSessionName

  
where **C-a** is _Ctrl-a_

Without attaching a screen session:

    
    
    $ screen -X sessionname newSessionName

If you have multiple screen running you have to specify which one to rename:

    
    
    $ screen -S sessionToRename -X sessionname newSessionName

