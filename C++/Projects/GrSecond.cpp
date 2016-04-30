#include <iostream>
#include <stdio.h>
#include <graphics.h>

using namespace std;

//void arc(int x,int y,int start, int end, int radius)
//void bar(int left,int top, int right, int bottom)
//void bar3d(int left, int top, int right, int bottom, int depth, int topflag)
//void circle(int x, int y, int radius)
//void drawpoly(int num, int* polypoints)
//void ellipse(int x, int y, int start, int end, int xrad, int yrad)
//void fillellipse(int x, int y, int xrad, int yrad)
//void fillpoly(int num, int* polypoints)
//int getbkcolor()
//int getpixel(int x, int y)
//void line(int x1, int y1, int x2, int y2);
//moveto(x,y) - lineto(x,y)
//void getimage(left, top, right, bottom, p)
//void outtextxy(int x, int y, char* string)
//void pieslice(int x, int y, int start, int end, int radius)
//void putpixel(int x, int y, int color)
//void sector(int x, int y, int start, int end, int xrad, int yrad)
//int textheight(char* string)
//int textwidth(char* string)

/*
enum fill_styles 
{ 
   EMPTY_FILL, 
   SOLID_FILL, 
   LINE_FILL, 
   LTSLASH_FILL, 
   SLASH_FILL,
   BKSLASH_FILL, 
   LTBKSLASH_FILL, 
   HATCH_FILL, 
   XHATCH_FILL, 
   INTERLEAVE_FILL,
   WIDE_DOT_FILL, 
   CLOSE_DOT_FILL, 
   USER_FILL 
};
*/
int main(){
	int gd=DETECT,gm;
	int left = 100, top = 100,right = 200, bottom = 200, x = 300, y = 150,radius = 50;
	int points[] = {320, 150, 420, 300, 250, 300, 320,150};

	initgraph(&gd,&gm,NULL);
	setbkcolor(BLACK);
	setcolor(RED);
	settextstyle(font, HORIZ_DIR, 1);

	cout<<"X: "<<getx()<<", Y: "<<gety()<<endl;	
   	arc(left, top, 0, 180, radius);
   	bar3d(left + 300, top, right + 300, bottom, 50, 10);
   	fillpoly(4, points);
	cout<<"X: "<<getx()<<", Y: "<<gety()<<endl;	
   	fillellipse(left + 300, top + 300, 100, 50);
   	cout<<"Background color: "<<getbkcolor()<<endl;
   	cout<<"Color: "<<getcolor()<<endl;
   	cout<<"Get x: "<<getmaxx()<<", y: "<<getmaxy()<<endl;
   	cout<<"Pixel color: "<< getpixel(0, 0)<<endl;
   	cout<<"Pixel color: "<< getpixel(top + 305, top + 5)<<endl;

   	char buf[] = "Words words words";
   	outtextxy(0, 0, buf);
   	pieslice(left, top + 200, 360-45, 360, 100);

	getch();
	closegraph();
	//Delay
	//delay(10000);
	return 0;
}