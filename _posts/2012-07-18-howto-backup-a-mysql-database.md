---
title: 'HOWTO: backup a MYSQL database'
categories:
- howto
- english
tags:
- mysql
- job
---
Backup a MYSQL database is simple as to dump it. From a Unix shell:

```
$ mysqldump --opt -u USER -p DBPASSWD -h HOSTNAME DBNAME > DUMPED_TEXTFILE
```

Ok, now [you can dump it following
this post]({{site.url}}/2012/07/17/howto-dump-data-into-mysql/ "HOWTO: dump data into MYSQL" ). :)
