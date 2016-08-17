---
title: 'HOWTO: remove a file with a leading dash ''-'' in it''s name'
categories:
- Uncategorized
- howto
tags:
- howto
- linux
- osx
---

    $ ls /tmp  
    
    -file_with_leading_slash.txt    generic_name.log    -file_with_leading_slash2.txt  
    
    $ rm /tmp/-file_with_leading_slash.txt #using full path  
    
    $ rm -- -file_with_leading_slash2.txt # -- stops looking for options  
    
    

