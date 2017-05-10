---
title: 'HOWTO: read a huge file with low memory usage in python'
categories:
- howto
- english
tags:
- python
---

```python
import fileinput  

for line in fileinput.input(['myfile']):  
    do_something(line)
```
