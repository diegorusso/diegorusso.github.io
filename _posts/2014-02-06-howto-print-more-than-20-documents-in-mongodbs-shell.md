---
title: 'HOWTO: print more than 20 documents in MongoDB''s shell'
categories:
- Uncategorized
- howto
tags:
- howto
- test
- mongo
---

    #> mongo  
    
    MongoDB shell version: 2.4.5  
    
    connecting to: test  
    
    > DBQuery.shellBatchSize = 100  
    
    100  
    
    > // Starting from now .find() will print out 100 documents each time  
    
    

