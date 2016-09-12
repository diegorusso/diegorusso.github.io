---
title: 'HOWTO: stampa i metodi di un oggetto in perl'
categories:
- personal
- italian
- howto
- guida
- programmazione
tags:
- python
- guida
---
Molto semplice

```perl
#DON'T use strict;
use Data::Dumper;
my $object = ....;
print "Instance METHOD IS  " . Dumper( %{ref ($object)."::" }) ;
```

In Python e ancora più semplice :)
