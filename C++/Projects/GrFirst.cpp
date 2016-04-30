#include <iostream>
#include <stdio.h>
#include <graphics.h>

using namespace std;

int main(){
	int gd=DETECT,gm;
	int left = 100, top = 100,right = 200, bottom = 200, x = 300, y = 150,radius = 50;

	initgraph(&gd,&gm,NULL);

	//Set background color
	//setbkcolor(5);
	
	//Cls fucntion
	cleardevice();
	
	//Rectangle 
	rectangle(left, top, right, bottom);
	//Circle
	circle(x,y,radius);
	//Bar
	bar(left + 300, top, right + 300, bottom);
	//Line
	line(left - 10, top + 150, left + 410, top + 150);
	//Ellipse
	ellipse(x, y + 200, 0, 360, 100, 50);
	//String write
	outtextxy(left + 100, top + 325, "First C Graphics Program");

	getch();
	closegraph();
	//Delay
	//delay(10000);
	return 0;
}