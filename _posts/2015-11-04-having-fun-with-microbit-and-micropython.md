---
title: Having fun with micro:bit and micropython
categories:
- personal
- italian [programming]
tags: [python, test, sed, microbit, micropython]
---
Last night I attended the usual [CamPUG](http://www.meetup.com/CamPUG/)
monthly meeting and the main topic was about micro:bit and micropython.

[![IMG_6734]({{site.url}}/images/IMG_6734.jpg){: .align-center}]({{site.url}}/images/IMG_6734.jpg)

micro:bit is a board that BBC will distribute to every year 7 student in the
UK (early 2016, roughly 1 million units) and it will be shipped with
[micropython](https://micropython.org) on it ([more
info](http://www.arm.com/innovation/products/microbit.php)). Hardware specs
can be found [here](https://www.microbit.co.uk/device): it has a Cortex-M0,
compass, accelerometer, 5x5 leds, bluetooth, uart, i2c, two buttons and other
stuff you can use.

[![IMG_6731]({{site.url}}/images/IMG_6731.jpg){: .align-center}]({{site.url}}/images/IMG_6731.jpg)

In a such tiny little board you can run python... well
[micropython](https://micropython.org), a fast implementation of [Python
3](http://www.python.org/) programming language that is optimised to run on a
microcontroller.

So, what did we do? Once plugged the micro:bit to the USB, we can run python
code through [microrepl](https://github.com/ntoll/microrepl), a script that
lets you run commands directly onto a connected micro:bit device.
Alternatively you can use the [browser based micro:bit
editor](https://github.com/ntoll/upyed), and start programming directly in
your browser. Very neat!

My group (Gareth and myself), after exploring, experimenting, and testing the
APIs, decided to do something with the 5x5 leds available. This is the code we
have written literllay in few minutes:


```python
import microbit     


# It returns the brightness (0-9) depending on the position of the led  
def brightness(x, y, t):  
    return (x + y + t) % 10


# Iterate the whole led matrix and set the pixel with the right brightness  
def get_image(t):  
    for x in range(0, 5):  
        for y in range(0, 5):  
            microbit.display.set_pixel(x,y, brightness(x,y,t))                           


t = 0  # time  
a = 1  # direction flag


# Start looping  
while True:  
    get_image(t)  # Set all the leds  
    t += a  # Incrementing t  
    microbit.sleep(100)  # Let's wait some time  
    if microbit.button_a.is_pressed():  #Check if the user presses the button  
        a *= -1  # Revert the direction  
```
    
This is what it does (in real time the effect is much better):
<iframe width="560" height="315" src="https://www.youtube.com/embed/uUY6GCazcFQ" frameborder="0" allowfullscreen></iframe>


And this is the slow motion:
<iframe width="560" height="315" src="https://www.youtube.com/embed/Nvdc0jZPLb4" frameborder="0" allowfullscreen></iframe>


When the user presses the button, it changes direction.
It has been very good fun and I'm sure kids will love it: it is
straightforward to use it, pretty intuitive and microrepl is very easy to use
(it has autocompletion!)
