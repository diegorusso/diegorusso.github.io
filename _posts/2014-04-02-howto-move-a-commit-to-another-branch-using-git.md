---
title: 'HOWTO: move a commit to another branch using GIT'
categories:
- howto
- english
tags:
- git
---

```
$ git log #Get the commit_ID that you want to move  
$ git checkout [right_branch]  
$ git cherry-pick [commit_ID]
```
