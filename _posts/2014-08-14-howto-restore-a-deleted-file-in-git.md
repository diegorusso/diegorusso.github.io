---
title: 'HOWTO: restore a deleted file in git'
categories:
- howto
- english
tags:
- git
- job
---
```
$ git rev-list -n 1 HEAD -- path_to_file  #this gives you the commit's hash  
$ git checkout commit_hash^ -- path_to_file # it restores the file
```
