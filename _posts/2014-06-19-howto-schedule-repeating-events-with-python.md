---
title: 'HOWTO: schedule repeating events with Python'
categories:
- programming
- job
- howto
tags:
- howto
- python
---

```python
import sched  
import datetime, time


class PeriodicScheduler(object):                                                  
    def __init__(self):                                                           
        self.scheduler = sched.scheduler(time.time, time.sleep)                   
                                                                            
    def setup(self, interval, action, actionargs=()):                             
        action(*actionargs)                                                       
        self.scheduler.enter(interval, 1, self.setup,                             
                        (interval, action, actionargs))                           
                                                                        
    def run(self):                                                                
        self.scheduler.run()


# This is the event to execute every time  
def periodic_event():  
    print datetime.datetime.now()


INTERVAL = 1 # every second  
periodic_scheduler = PeriodicScheduler()  
periodic_scheduler.setup(INTERVAL, periodic_event) # it executes the event just once  
periodic_scheduler.run() # it starts the scheduler  
```    
