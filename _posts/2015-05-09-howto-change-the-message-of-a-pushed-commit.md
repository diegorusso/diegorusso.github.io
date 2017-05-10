---
title: 'HOWTO: Change the message of a pushed commit'
categories:
- howto
- english
tags:
- git
- job
---

  * `git rebase -i` 
  * In you editor now change `pick` to `reword` on the line for the incorrect commit.
  * Once you have done, save and close.
  * Now the editor opens again with the message to correct. Do your correction, save and close
  * `git push --force`
  
This method will rewrite the history of your repository. If someone
pulled/fetched from the repo between the commit with the wrong message and
when you correct it, he/she could have some issues. It would be useful to
communicate to anyone involved about your action.
