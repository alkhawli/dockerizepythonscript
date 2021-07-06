import time

def loop():
    i=0
    while(True):
        print("{0}: Hallo World!".format(i))
        time.sleep(2)
        i+=1
loop()
