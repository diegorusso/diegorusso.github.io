---
title: 'HOWTO: remove external repositories from subversion'
categories:
- howto
- english
tags:
- svn
---
Go to the root of your svn local copy and type:

```
$ svn propedit svn:externals .
```

A list of external links is listed on your editor: remove the lines needed,
save and commit the changes.
