import random
mylist = []

for i in range(0, 20):
   x=random.randrange(0, 10000, 5)
   print(x)
   mylist.append(x)

print(mylist)
