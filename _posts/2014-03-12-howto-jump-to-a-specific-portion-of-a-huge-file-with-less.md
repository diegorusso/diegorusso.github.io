---
title: 'HOWTO: jump to a specific portion of a huge file with less'
categories:
- Uncategorized
- howto
tags:
- howto
- linux
- less
---

    #> less +56g hugefile.txt # it goes to the 56th line  
    
    #> less +56p hugefile.txt # it goes into the 56% of the file  
    
    #> less +56P hugefile.txt # it goes to the line containing the 56th byte  
    
    

