#!/usr/bin/env python3


from xdo import Xdo
from time import sleep
from timeloop import Timeloop
from datetime import timedelta
import threading

tl = Timeloop()

#@tl.job(interval=timedelta(seconds=1))
def moveMizuki():
    xdo = Xdo()
    xdo.move_mouse(535, 520)
    print("moved Mizuki")

@tl.job(interval=timedelta(seconds=2))
def movePowerUp1():
    xdo = Xdo()
    xdo.move_mouse(955, 1060)

@tl.job(interval=timedelta(seconds=3))
def moveStadnard():
    xdo = Xdo()
    xdo.move_mouse(850, 850)
    


def clickloop(win_id, times):
    xdo = Xdo()
    
    t = threading.Event()

    while times == True:
        xdo.mouse_down(win_id, 1)
        sleep(0.05)
 
        xdo.mouse_up(win_id, 1)
        sleep(0.05)

       # while not t.wait(2):
       #     moveMizuki()






def init():
    xdo = Xdo()
    win_id = xdo.select_window_with_click()
    print("Select Window")
    if win_id:
        clickloop(win_id, True)

init()
