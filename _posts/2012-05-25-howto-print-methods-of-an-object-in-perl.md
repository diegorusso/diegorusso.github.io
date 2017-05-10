---
title: 'HOWTO: print methods of an object in perl'
categories:
- howto
- english
tags:
- perl
- job
---
Pretty simple:

```perl
#DON'T use strict;
use Data::Dumper;
my $object = ....;
print "Instance METHOD IS  " . Dumper( %{ref ($object)."::" }) ;
```
  
In Python it's even easier :)

