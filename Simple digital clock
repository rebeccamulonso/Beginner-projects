from tkinter import *
from time import strftime

myWindow = Tk()
myWindow.title('My Clock')

# Define the 'clock' variable before the 'time()' function
clock = Label(myWindow, font=('arial', 40, 'bold'), background='purple', foreground='pink')
clock.pack(anchor='center')

def time():
    myTime = strftime('%H:%M:%S %p')
    clock.config(text=myTime)
    clock.after(1000, time)

time()
mainloop()
