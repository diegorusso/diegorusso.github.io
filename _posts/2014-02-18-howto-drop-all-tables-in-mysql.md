---
title: 'HOWTO: drop all tables in MySQL'
categories:
- personal
- italian
- howto
tags:
- mysql
---
Unfortunately MySQL doesn't have any command to drop all tables or to truncate
the database. It has just DROP TABLE and DROP DATABASE.

A solution to drop all the tables without dropping the database could be
playing with some pipe, grep and mysql/mysqldump client. Here the result:

```    
$ mysqldump -u[USERNAME] -p[PASSWORD] --add-drop-table --no-data [DATABASE] | grep ^DROP | mysql -u[USERNAME] -p[PASSWORD] [DATABASE]
```
  
_[Source](http://www.thingy-ma-jig.co.uk/blog/10-10-2006/mysql-drop-all-tables)_
