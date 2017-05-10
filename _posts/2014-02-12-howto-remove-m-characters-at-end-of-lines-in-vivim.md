---
title: 'HOWTO: remove ^M characters at end of lines in vi/vim'
categories:
- howto
- english
tags:
- vim
---
Open the file with vim, then type:

```
:%s/^V^M//g  
```    
    
`^V` (CONTROL-V) is used to escape control characters.
