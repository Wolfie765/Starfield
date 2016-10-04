//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
	int Rawr = new NormalParticle();
	Rawr.show();
	Rawr.move();
}
class NormalParticle
{
	//your code here
	double myX, myY, speed, angle;
	int colour;
	NormalParticle(){
		myX = 200;
		myY = 200;
		angle = (Math.random()*360)-1;
	}
	void move(){
		myX = myX + cos(angle)*speed;
	}
	void show(){
		fill(colour, colour, colour);
		ellipse(myX, myY, 20, 50);

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

