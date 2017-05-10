---
title: 'HOWTO: AutoVivification in python'
categories:
- howto
- english
tags:
- python
---

```python
class AutoVivification(dict):  
    """Implementation of perl's autovivification feature."""  
    def __init__(self,*arg,**kw):  
          super(AutoVivification, self).__init__(*arg, **kw)                    

    def __getitem__(self, item):  
        try:  
            return dict.__getitem__(self, item)  
        except KeyError:  
            value = self[item] = type(self)()  
            return value  

    @property  
    def dict(self):  
        return self._to_dict(self)                                              

    @classmethod  
    def _to_dict(cls, sub_dict):  
        return {k:cls._to_dict(v) for k,v in sub_dict.items()} \  
                    if isinstance(sub_dict, cls) else sub_dict
```
  
_Source: [here](http://stackoverflow.com/questions/635483/what-is-the-best-way-to-implement-nested-dictionaries-in-python/652284#652284) and
[here](http://en.wikipedia.org/wiki/Autovivification#Python)_

