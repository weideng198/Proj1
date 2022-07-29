#This python program generate a series of random numbers divisible by 5. Generate 20 sequence of numbers.
#Test  
import random
mylist = []

for i in range(0, 20):
   x=random.randrange(0, 10000, 5)
   print(x)
   mylist.append(x)

print(mylist)
