---
title: 'HOWTO: passing arguments to functions in Django Template'
categories:
- personal
- italian
- programming
- job
- howto
- geek
tags:
- django
---
[Django](http://www.djangoproject.com/) doesn't allow you because it goes
against **MVC** model, but sometime it's useful to get output (**at view
level**) depending on specific arguments. For example in my model I have this
method:

```python
def get_value(self, arg_to_pass):
    if (arg_to_pass.is_type_A):
        return self.value_for_A
    else:
        return self.value_for_B
```
  
In your template you'll type `{{ object.get_value }}` but you can't pass
argument. You can solve this issue with `templatetags`.  
Create a templatetag like this below:

```python
def callMethod(obj, methodName):  
    method = getattr(obj, methodName)
    if obj.__dict__.has_key("__callArg"):  
        ret = method(*obj.__callArg)  
        del obj.__callArg  
        return ret  
    return method()

def args(obj, arg):  
    if not obj.__dict__.has_key("__callArg"):  
        obj.__callArg = []
    obj.__callArg += [arg]  
    return obj

register.filter("call", callMethod)  
register.filter("args", args)
```
  
Ok, almost done. Now, in your template, call your method typying:

```
{{ object|args:arg_to_pass|call:"get_value" }}
```

Job done! If you have any question, leave a comment! :)

_Source: [sprklab.com](http://www.sprklab.com/notes/13-passing-arguments-to-functions-in-django-template/)_
