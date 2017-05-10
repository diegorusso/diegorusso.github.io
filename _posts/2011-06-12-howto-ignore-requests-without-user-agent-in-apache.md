---
title: 'HOWTO: ignore requests without user agent in Apache'
categories:
- howto
- english
tags:
- apache
- job
---
A public web server could be reached by many http requests with no user agent.
Apache can avoid this kind of requests. The configuration is very
straightforward:

```
SetEnvIfNoCase User-Agent "^-?$" noUserAgent  
Order Allow,Deny  
Allow from All  
Deny from env=noUserAgent
```
  
In this example Apache ignores all requests without user agent that are
directed to `/path/to/a/directory`

Comments are appreciate.
