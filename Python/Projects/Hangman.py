# Sample python project: text based Hangman

# Functions
def drawHangman(guesses):
	pic = ['     __________________ ',
		   '    |                  |',
		   '    |                  |',
		   '    |                  |',
		   '    |                  |',
		   '    |                  |',
		   '    |                  |',
		   '    |                  ',
		   '    |                  ',
		   '    |                  ',
		   '    |                  ',
		   '    |                  ',
		   '    |                  ',
		   '    |                  ',
		   '    |                  ',
		   '    |                  ',
		   '    |                  ',
		   '____|__________________',
		   '* * | * * * * * * * * *',
		   ' * *|* * * * * * * * *']
	for line in pic:
		print(line)

# Start Program
drawHangman(0)	
