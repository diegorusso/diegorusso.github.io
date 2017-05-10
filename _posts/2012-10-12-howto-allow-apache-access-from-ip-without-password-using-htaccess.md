---
title: 'HOWTO: allow Apache access from IP without password using htaccess'
categories:
- howto
- english
tags:
- apache
- htaccess
- linux
- job
---
Very straightforward. Just write these lines in your VirtualHost, Location or
Directory configuration.

```
Order deny,allow
Deny from all
AuthName "htaccess password prompt"
AuthUserFile /path/to/.htpasswd
AuthType Basic
Require valid-user
Allow from 172.17.10.1
Satisfy Any
```

Easy, isn't it? Anyway If you have any problem, drop me a comment or an email.
:)
