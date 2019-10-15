PFont font;

void setup()
{
	noLoop();
	size(680,750);
}

void draw()
{
	int red = (int)(Math.random()*256);
	int green = (int)(Math.random()*256);
	int blue = (int)(Math.random()*256);
	color c = color(red, green, blue);
	background(c);
	int sum = 0;
	for (int y = 20; y <= 460; y += 220){
		for (int x = 20; x <= 460; x += 220){
			Die die = new Die(x, y);
			die.roll();
			die.show();
			sum+=die.roll;

		}
	}
	fill(255);
	rect(240 , 680, 200, 50, 10);
	fill(0);
	font = createFont("Yu Gothic Bold", 40);
	textFont(font);
	text("Sum" + " = " + sum, 247, 720);
}

void mousePressed()
{
	redraw();

}

class Die //models one single dice cube
{
	int roll, myX, myY;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		roll = (int)(Math.random()*6)+1;

	}
	void show()
	{
		fill(250);
		rect(myX, myY, 200, 200, 40);
		if (roll == 1){
			fill(0);
			ellipse(myX + 100, myY + 100 , 50, 50);
		}
		if (roll == 2){
			fill(0);
			ellipse(myX + 50, myY + 50, 50, 50);
			ellipse(myX + 150, myY + 150 , 50, 50);
		}

		if (roll == 3){
			fill(0);
			ellipse(myX + 50, myY + 50, 50, 50);
			ellipse(myX + 100, myY + 100, 50, 50);
			ellipse(myX + 150, myY + 150 , 50, 50);
		}
		if (roll == 4){
			fill(0);
			ellipse(myX + 50, myY + 50, 50, 50);
			ellipse(myX + 150, myY + 150, 50, 50);
			ellipse(myX + 150, myY + 50, 50, 50);
			ellipse(myX + 50, myY + 150, 50, 50);

		}
		if (roll == 5){
			fill(0);
			ellipse(myX + 50, myY + 50, 50, 50);
			ellipse(myX + 100, myY + 100, 50, 50);
			ellipse(myX + 150, myY + 150 , 50, 50);
			ellipse(myX + 150, myY + 50, 50, 50);
			ellipse(myX + 50, myY + 150, 50, 50);
		}
		if (roll == 6){
			fill(0);
			ellipse(myX + 50, myY + 40, 50, 50);
			ellipse(myX + 150, myY + 160, 50, 50);
			ellipse(myX + 150, myY + 40, 50, 50);
			ellipse(myX + 50, myY + 160, 50, 50);
			ellipse(myX + 50, myY + 100, 50, 50);
			ellipse(myX + 150, myY + 100, 50, 50);


		}


	}
} 
