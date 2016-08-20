---
title: 'HOWTO: dump data into MYSQL'
categories:
- osx
- linux
- job
- howto
tags:
- howto
- mysql
---
From a Unix shell:

```
$ mysql -h HOSTNAME -u USER -p DBPASSWD DBNAME < DUMPED_TEXTFILE
```

Simple eh :)

