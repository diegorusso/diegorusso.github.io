---
title: 'HOWTO: imprimir m&eacute;todos de un objecto en perl'
categories:
- personal
- italian
- howto
- guia
- programaci&oacute;n
tags:
- python
- guia
---
Muy simple:

```perl
#DON'T use strict;
use Data::Dumper;
my $object = ....;
print "Instance METHOD IS  " . Dumper( %{ref ($object)."::" }) ;
```

En Python es aun mas facil :)
