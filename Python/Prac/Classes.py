class Person:
	def __init__(self, who, age):
		self.name = str(who)
		self.age = int(age)
	def printDetails(self):
		print 'My name is ' + self.name + '. I am currently ' + str(self.age) + ' years old' 
class King(Person):
	country = ''
	def printDetails(self):
		print 'My name is ' + self.name + '. I am currently ' + str(self.age) + ' years old' 
		print '\tI am the ruler of ' + self.country

Bob = Person('Bob', 50)
Bob.printDetails();	
Tom = Person(age = 20, who ='Tommy')
Tom.printDetails()

Gilgamesh = King('Gilgamesh', '19')
Gilgamesh.country = 'Uruk'
Arturia = King('Arturia', '18')
Arturia.country = 'Britan'
Arturia.printDetails()
Gilgamesh.printDetails()

print ''

class Vector2:
	name = ''
	x, y = 0, 0
	def __init__(self, name, x, y):
		self.name = str(name)
		self.x = float(x)
		self.y = float(y)

	def __add__(self, o):
		x = self.x + o.x
		y = self.y + o.y
		return Vector2('Sum', x, y)

	def __sub__(self, o):
		x = self.x - o.x
		y = self.y - o.y
		return Vector2('Difference', x, y)

	def __mul__(self, o):
		if isinstance(o, Vector2):
			print 'This a scaling multiplication, Use dot() or cross()'
			return None
		x = self.x * o
		y = self.y * o
		return Vector2(self.name, x, y)
	
	def __div__(self, o):
		if isinstance(o, Vector2):
			print 'Cannot divide a vector by a vector'
			return None
		elif o == 0:
			print 'Cannot divide by zero'
			return None
		x = self.x / o
		y = self.y / o
		return Vector2(self.name, x, y)

	def __str__(self):
		return self.name +': <' + str(self.x) + ', ' + str(self.y) + '>'

A = Vector2('A', 5, 2)
print A
B = Vector2('B', -1, -1)
print B
Sum = A + B
print Sum
Diff = B - A
print Diff
Div = B / 4
print Div
Mult = A * 5
print Mult
 