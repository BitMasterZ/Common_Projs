#Basic graphics tutorial
import sys, pygame;
import time;

#Utility Classes
class Timer:
	def __init__(self, cyc):
		self.start = 0
		self.delay = cyc;
	

	def tick(self):
		if (time.time() - self.start) * 1000 > self.delay:
			self.start = time.time() 
			return True;
		return False;
	

#Shape classes
class Rect:
	def __init__(self, coords, dimens, RGB):
		self.x, self.y = coords
		self.w, self.h = dimens
		self.col = RGB
		self.keyFlags = [False, False, False, False]
		self.keys = []

	def assignKeys(self, asi):
		self.keys = asi

	def move(self, maxx, maxy):
		pressed = pygame.key.get_pressed()
		if pressed[self.keys[0]]: self.keyFlags[0] = True 
		if pressed[self.keys[1]]: self.keyFlags[1] = True
		if pressed[self.keys[2]]: self.keyFlags[2] = True
		if pressed[self.keys[3]]: self.keyFlags[3] = True
		
		if event.type == pygame.KEYUP:
			if event.key == self.keys[0]: self.keyFlags[0] = False
			if event.key == self.keys[1]: self.keyFlags[1] = False
			if event.key == self.keys[2]: self.keyFlags[2] = False
			if event.key == self.keys[3]: self.keyFlags[3] = False

		if self.keyFlags[0] and self.x + self.w < maxx : #RIGHT
			self.x =  self.x + 0.5
		if self.keyFlags[1] and self.x > 0: #LEFT
			self.x =  self.x - 0.5
		if self.keyFlags[2] and self.y > 0: #UP
			self.y =  self.y - 0.5
		if self.keyFlags[3] and self.y + self.h < maxy: #DOWN
			self.y =  self.y + 0.5		


	def draw(self, scr):
		pygame.draw.rect(scr, self.col, pygame.Rect(self.x, self.y, self.w, self.h))

class Circ:
	def __init__(self, coords, rad, RGB):
		self.x, self.y = coords
		self.radius = rad
		self.col = RGB
	def draw(self, scr):
		pygame.draw.circle(scr, self.col, (int(self.x), int(self.y)), self.radius)
	def assignSpeed(self, Sp):
		self.MSpeed = Sp
	def move(self, maxx, maxy):
		self.x = self.x + self.MSpeed[0]
		self.y = self.y + self.MSpeed[1]

		if self.x + self.MSpeed[0] < 0 or self.x + self.radius + self.MSpeed[0] > maxx:
			self.MSpeed[0] = -self.MSpeed[0] 
		if self.y + self.MSpeed[1] < 0 or self.y + self.radius + self.MSpeed[1] > maxy:
			self.MSpeed[1] = -self.MSpeed[1] 
	def collision(self, objs):
		for obj in objs:
			if self.x + self.radius + self.MSpeed[0] > obj.x and self.x - self.radius + self.MSpeed[0] < obj.x + obj.w:
				if self.y + self.radius + self.MSpeed[1] > obj.y and self.y  - self.radius + self.MSpeed[1] < obj.y + obj.h:
					temp = self.MSpeed[0];
					self.MSpeed[0] = -self.MSpeed[1]
					self.MSpeed[1] = -temp

#Initialize pygame
pygame.init()

#Window dimensions
SIZE = WIDTH, HEIGHT = (600,500)

#Open a window of the specified size
SCREEN = pygame.display.set_mode(SIZE)


#Game Timer
ANIM_TIMER = Timer(1);

r1 = Rect((0, 30), (10,100), (0, 128, 255))
r1.assignKeys([pygame.K_d,pygame.K_a,pygame.K_w,pygame.K_s])

r2 = Rect((500, 30), (10,100), (255, 120, 120))
r2.assignKeys([pygame.K_RIGHT,pygame.K_LEFT,pygame.K_UP,pygame.K_DOWN])

ball = Circ((300,200), 10, (255,255,255))
ball.assignSpeed([0.3, 0.4])
ball2 = Circ((300,400), 10, (235,235,235))
ball2.assignSpeed([-0.1, 0.3])

fnt = pygame.font.SysFont("Ubuntu", 36)
text = fnt.render("Simple Pong", 1 , (0,100,100))


#Update events
while True:
	for event in pygame.event.get():
		if event.type == pygame.QUIT: sys.exit()


	if(ANIM_TIMER.tick()):

		
		SCREEN.fill((0,0,0))
		SCREEN.blit(text,(200,0))

		r1.move(WIDTH, HEIGHT)
		r1.draw(SCREEN)

		r2.move(WIDTH, HEIGHT)
		r2.draw(SCREEN)

		ball.move(WIDTH, HEIGHT)
		ball.collision([r1, r2])
		ball.draw(SCREEN)

		ball2.move(WIDTH, HEIGHT)
		ball2.collision([r1, r2])
		ball2.draw(SCREEN)
		

	#Double buffering
	pygame.display.flip()


	#pygame.draw.rect(SCREEN, (0, 128, 255), pygame.Rect(30, 30, 60, 60))