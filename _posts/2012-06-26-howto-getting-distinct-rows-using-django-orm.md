---
title: 'HOWTO: getting distinct rows using Django ORM'
categories:
- howto
- english
tags:
- django
- python
---
Pretty simple:

```python
Author.objects.values('surname').distinct()
```

You have a list of all authors with no duplication.  
If you use `.orderby()` together with `.values()`, you'll have to specify in
the order a field that is in `.values()`

Any comment or suggestion are appreciate :)
