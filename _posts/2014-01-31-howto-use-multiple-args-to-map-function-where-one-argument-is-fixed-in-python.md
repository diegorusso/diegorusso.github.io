---
title: 'HOWTO: use multiple args to map function where one argument is fixed in python'
categories:
- Uncategorized
- howto
tags:
- howto
- python
---

```python
import functools

def function(x, y):
return x + y

arg_list = [1,2,3,4]

# we fix y=10
map(functools.partial(function, y=10), arg_list)

# [11, 12, 13, 14]
```
