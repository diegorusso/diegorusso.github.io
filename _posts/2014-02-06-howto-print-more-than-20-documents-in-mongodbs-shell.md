---
title: 'HOWTO: print more than 20 documents in MongoDB''s shell'
categories:
- personal
- italian

- howto
tags:
- mongo
---


```
$ mongo  
MongoDB shell version: 2.4.5  
connecting to: test  
> DBQuery.shellBatchSize = 100  
100  
> // Starting from now .find() will print out 100 documents each time
```
