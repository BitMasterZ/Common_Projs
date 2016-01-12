import math
x = 20
## If conditions
if x == 30:
	print('Correct')
elif x == 15:
	print("It works")
else: print(x)


## While/else loop
reply = ''
while reply != 'Bit-Sama':
	reply = raw_input("Mirror Text('stop' to exit): ")
	if reply == 'stop':
		break
	print(reply.upper())
else:
	print('Welcome master')


## Combining both

print("\nCalculating area and circumference of a circle")
radius = ''

while not radius.isdigit():
	radius = raw_input("Enter the radius of the circle: ")
	pass

radius = float(radius)	
print('Circumference = ' + str(2 * math.pi * radius))
print('Area = ' + str(math.pi * radius ** 2))

## try/catch block 

num = '12'

try:
	num = int(num)
except:
	print("Invalid could not convert '" + num + "' to string")
else:
	print(num ** 2)

# For loops

arr = [123, 13, 25, 678, 0, 20, 234, 565, 21]

for elem in arr:
	print(elem)			