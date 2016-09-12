---
title: 'HOWTO: retrieve a single file from a specific version in git'
categories:
- personal
- italian

- howto
tags:
- git
---
`git show` will help you. Few examples below:

```
$ git show file.py  
$ git show HEAD^^^:file.py  
$ git show 948a17:file.py
```
    
    

