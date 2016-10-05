//your code here
NormalParticle[] test;
void setup()
{
	size(400, 400);
	test = new NormalParticle[200];
	for(int i = 0; i < test.length; i++){
		test[i] = new NormalParticle();
	}
	//your code here

}
void draw()
{
	//your code here
	background(200);
	for(int i = 0; i < test.length; i++){
		test[i].show();
		test[i].move();
	}
}
class NormalParticle
{
	//your code here
	double myX, myY, speed, angle;
	int colour;
	NormalParticle(){
		myX = 200;
		myY = 200;
		angle = (Math.random()*2)*PI;
		speed = 1;
	}
	void move(){
		myX = myX + Math.cos(angle)*speed;
		myY = myY + Math.sin(angle)*speed;
	}
	void show(){
		fill(colour, colour, colour, 5);

		ellipse((int)myX, (int)myY, 20, 20);

	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

