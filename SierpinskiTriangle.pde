public void setup()
{
	size(800, 800);
	frameRate(10);	
}
public void draw()
{
	background((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
	sierpinski(0, 800, 800);
}
public void mouseDragged()//optional
{
	
}
public void sierpinski(int x, int y, int len) 
{
	noStroke();
	fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
	if(len >= 20)
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
	else
	{
		triangle(x, y, x+len, y, x+len/2, y-len);
		
	}
}
