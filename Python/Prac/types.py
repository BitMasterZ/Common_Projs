# Numbers: 1234, 3.1415, Decimal(), Fraction();
# Strings: 'spam', "asdasd"
# Lists: [1, [2, 'three'], 4.5], list(range(10))
# Dictionaries: {'food': 'spam', 'taste': 'yum'}, dict(hours = 10)
# Tuples: (1, 'spam', 4, 'U'), tuple('spam'), namedtuple
# Files: open('eggs.txt'), open('asdasdas', 'wb')
# Sets: set('abc'), {'a', 'b', 'c'}
# Other core types: Booleans, types, None
# Program unit types: Functions, modules, classes
# Implemented-realted types: Compiled code, stack tracebacks
import math
import random
import fractions

#---------------------------------------------------Numbers---------------------------------------------------#
print(math.pi)
print(math.sqrt(225))
print(random.random())
arr = list(range(14))
print(arr)
print(random.choice(arr))
f  = fractions.Fraction(2, 3)
print(f)
print('')

#---------------------------------------------------String---------------------------------------------------#
S = 'Spam'
print(S)
print(len(S))								# Length of the string
print(S[0])									# The first item in S, indexing by zero-based position
print(S[1])									# The second item from the left
print(S[-1])								# The last item from the end in S
print(S[len(S)-1])							# Technical way of backward indexing
print(S[-2])
print(S[1:3])								# Slice of S from offsets 1 through 2
print(S[1:])								# Everything past the first
print(S[0:3])								# Everything but the last
print(S[:3])								# Same as S[0:3]
print(S[0:-1])								# Everything but the last
print(S[:])									# Top level copy
print(S + 'xyz')							# Concatenation
print(S * 8);
#Numbers, Strings and Tuples are immutable (cannnot be changed in place)
##S[0] = 'Z'
S = 'Z'  + S[1:]
print(S)
# Lists and dictonaries are NOT immutable
S = 'shrubbery'
L = list(S)
print(L)
L[1] = 'c'
print(''.join(L))
# Bytearray is a mutable string
B = bytearray(b'spam')
B.extend(b'eggs')
B[0] = 'Z'
print(B.decode())
#String functions
S = 'Spam'
print(S.find('pa'))
print(S.replace('pa', 'XYZ'))
line = 'aaa,bbb,ccccc,dd'
print(line.split(','))
S = 'Spam'
print(S)
print(S.upper())
print(S.lower())
print('Alpha: ' + str(S.isalpha()))
print('Numeric: ' + str(S.isdigit()))
line = 'aaa,bbb,ccccc,dd\n'
print(line.rstrip())
print(line.rstrip().split(','))
# List all methods
print(dir(S))
#print(help(S.replace))
print('')

#---------------------------------------------------Lists---------------------------------------------------#
L = [123, 'spam', 1.23]
print(len(L))
print(L[0])
print(L[:-1])
print(L + [4, 5, 6])
print(L * 2)
# List methods
L.append('NI')
print(L)
print(L.pop(2))
print(L)
M = ['bb', 'aa', 'cc']
print(M)
M.sort()
print(M)
M.reverse()
print(M)
#Comprehension expressions
M = [[1, 2, 3],
	 [4, 5, 6],
	 [7, 8, 9]]
print(M)
col2 = [row[1] for row in M]
print(col2)
col2 = [row[1] + 1 for row in M]
print(col2)
col2 = [row[1] for row in M if row[1] % 2 == 0]
print(col2)
diag = [M[i][i] for i in [0, 1, 2]]
print(diag)
print('')

#---------------------------------------------------Tuples---------------------------------------------------#
T = (1, 4, 3, 4)
print(len(T))
print(T + (5, 6))
print(T[0])
print(T.index(4))
print(T.count(4))
print('')

#---------------------------------------------------Files---------------------------------------------------#
f = open('data.txt', 'w')										# Make a new file in the output mode ('w' is write)
f.write('Hello\n')				
f.write('world\n')
f.close()														# Close to flush output buffers to disk
f = open('data.txt')
text = f.read()
print(text)
print('')

#---------------------------------------------------Sets---------------------------------------------------#
X = set('spam')
Y = {'h', 'a', 'm'}
print(X, Y)														# A tuple of two sets without paranthesis
print(X & Y)													# Intersection
print(X | Y)													# Union
print(X - Y)													# Difference
print(X > Y)													# Superset















