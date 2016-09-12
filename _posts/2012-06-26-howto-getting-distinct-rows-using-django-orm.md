---
title: 'HOWTO: getting distinct rows using Django ORM'
categories:
- personal
- italian
- programming
- job
- howto
tags:
- django
---
Pretty simple:

```python
Author.objects.values('surname').distinct()
```

You have a list of all authors with no duplication.  
If you use `.orderby()` together with `.values()`, you'll have to specify in
the order a field that is in `.values()`

Any comment or suggestion are appreciate :)
