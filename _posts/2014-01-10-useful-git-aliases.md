---
title: useful git aliases
categories:
- personal
- italian

- status
tags:
- git
---
Copy and paste the following code into `~/.gitconfig`

```
[alias]                                                                         
co = checkout                                                               
ci = commit                                                                 
st = status                                                                 
br = branch                                                                 
hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short     
type = cat-file -t                                                          
dump = cat-file -p                                                          
df = diff                                                                   
dc = diff --cached                                                          
lg = log -p                                                                 
lol = log --graph --decorate --pretty=oneline --abbrev-commit               
lola = log --graph --decorate --pretty=oneline --abbrev-commit --all        
ls = ls-files                                                               
ign = ls-files -o -i --exclude-standard
```

