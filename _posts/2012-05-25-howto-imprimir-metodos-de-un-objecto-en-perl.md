---
title: 'HOWTO: imprimir m&eacute;todos de un objecto en perl'
categories:
- howto
- spanish
tags:
- perl
- job
---
Muy simple:

```perl
#DON'T use strict;
use Data::Dumper;
my $object = ....;
print "Instance METHOD IS  " . Dumper( %{ref ($object)."::" }) ;
```

En Python es aun mas facil :)
