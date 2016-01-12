##print(times(4,4)
def times(x, y):
	return x * y

def factorial(x):
	if x == 1: return 1
	return x * factorial(x - 1)	

print(times(2, 4))
print(times('Ki', 8 ))								# Functions are typeless
print(factorial(5))
