# First Python project for number guessing game
import random
name = raw_input('Please enter your name: ')
print('Hello ' + name + ', welcome to the number guessing game!!')
print('Your objective is to guess the magic number(between 0 and 100 inclusive). If your guess is incorrect,'
	+' I will tell you if the magic number is lower or higher than your guess')

magic_num = random.choice(range(0, 101))
num_guesses = 0
#print(magic_num)

while True:
	x = raw_input("Guess the magic number: ")
	try:
		x = int(x)
	except:
		print('Please enter a number')
	else:
		if x == magic_num: break;
		if x < magic_num: print('Higher')
		if x > magic_num: print('Lower')
		num_guesses+=1

num_guesses+=1
print('You win, ' + name + ' guessed the magic number using ' + str(num_guesses) + ' guesses')