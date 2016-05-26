---
title: 'HOWTO: getting distinct rows using Django ORM'
categories:
- programming
- job
- howto
tags:
- howto
- django
---
Pretty simple:

    
    
    Author.objects.values('surname').distinct()

  
You have a list of all authors with no duplication.  
If you use _.orderby()_ together with _.values()_, you'll have to specify in
the order a field that is in _values()_.

Any comment or suggestion are appreciate :)

