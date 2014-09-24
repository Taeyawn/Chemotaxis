Bacteria [] a;
void setup()   
 {     
 background(5);
 size(300,300);
 a = new Bacteria[150];  
 for(int i=0; i<a.length; i++)
 {
 	a[i] = new Bacteria();
 } 
 }   
 void draw()   
 {    
 	background(5);
 	for(int i=0; i<a.length; i++)
 {
 	a[i].show();
 	a[i].move();
 } 
 }

class Bacteria    
 {     
 	int x, y, color1, color2, color3;
 	Bacteria()
 	{
 	x = 150;
 	y = 150;
 	color1 = (int)(Math.random()*255);
 	color2 = (int)(Math.random()*255);
 	color3 = (int)(Math.random()*255);
 	} 
 	void move()
 	{
 	x = x + (int)(Math.random()*4-2);
 	y = y + (int)(Math.random()*4-2);
 	}
 	void show()
 	{
 	fill(color1,color2,color3);
 	ellipse(x,y,10,10);
 	}
 }
