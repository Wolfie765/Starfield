//your code here
Particle[] test;
Particle[] RawrTest;
Particle[] Tuba;
void setup()
{
	size(400, 400);
	test = new NormalParticle[200];
	RawrTest = new OddballParticle[200];
	Tuba = new JumboParticle[200];
	for (int i = 0; i < Tuba.length; ++i) {
		Tuba[i] = new JumboParticle();
	}
	for(int i = 0; i < test.length; i++){
		test[i] = new NormalParticle();
	}

	for(int i = 0; i < RawrTest.length; i++){
		RawrTest[i] = new OddballParticle();
	}
	
	//your code here

}
void draw()
{
	//your code here
	background(15, 15, 15); //150, 127, 219 For your design
	for(int i = 0; i < test.length; i++){
		
		test[i].show();
		test[i].move();

	}

	for(int i = 0; i < RawrTest.length; i++){
		RawrTest[i].show();
		RawrTest[i].move();
	}

	for(int i =0; i < Tuba.length; i++){
		Tuba[i].show();
		Tuba[i].move();
	}

	
	for(int i = 0; i < 60; i ++){
	fill(255, 255, 255, 80 - i);	
		ellipse(200,200, i, i);
	}

	noFill();
	//stroke(0, 25, 255);
		arc(200, 200, 80, 80, 0, 360);
	
}


class NormalParticle implements Particle{
	//your code here
	double myX, myY, speed, angle;
	int rojo, verde, azul, stroker, sizze;
	NormalParticle(){
		myX = 200;
		myY = 200;
		angle = (Math.random()*2)*PI;
		speed = (Math.random()*5) + 2;
		rojo = (int)(Math.random()*70)+ 180;
		verde = (int)(Math.random()*70)+ 180;
		//rojo = (int)(Math.random()*255);
		//verde = (int)(Math.random()*255);
		//azul = (int)(Math.random()*255);
		//stroker = (int)(Math.random()*70);
		sizze = (int)(Math.random()*10);
	}
	public void move(){
		myX = myX + Math.cos(angle)*speed;
		myY = myY + Math.sin(angle)*speed;
		if(myX > 400|| myX < 0|| myY > 400 || myY < 0)
		{	
			myX = 200;
			myY = 200;
		}
		//if(myX >300 || myX < 100 || myY > 300 || myY < 100){
		//	speed = speed - (0);
		//}
	}
	public void show(){
		fill(rojo, verde, 255, 200);
		stroke(rojo, verde, 255);
		ellipse((int)myX, (int)myY, sizze, sizze);

	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
	double myX, myY, speed, angle;
	int rojo, verde, azul, sizze;
	OddballParticle(){
		myX = 200;
		myY = 200;
		angle = (Math.random()*2)*PI;
		speed = (Math.random()*7);
		rojo = (int)(Math.random()*255);
		verde = (int)(Math.random()*255);
		azul = (int)(Math.random()*255);
		sizze = (int)(Math.random()*10);

	}
	public void move(){
		myX = myX + Math.cos(angle)*speed;
		myY = myY + Math.sin(angle)*speed;
		if(myX > 400|| myX < 0|| myY > 400 || myY < 0)
		{	
			myX = 200;
			myY = 200;
		}
	}
	public void show(){
		noStroke();
		fill(rojo, verde, azul, 200);
		rect((int)myX, (int)myY, sizze, sizze);

	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	int m_Num;
	JumboParticle(){
		speed = Math.random()*6 + 3;
		rojo = (int)(Math.random()*255);
		verde = (int)(Math.random()*255)- 100;
		azul = (int)(Math.random()*255)- 275;
		m_Num = (int)(Math. random()* 10 - 1);
	}

	public void move(){
		myX = myX + Math.cos(angle)*speed;
		myY = myY + Math.sin(angle)*speed;
		if(myX > 400|| myX < 0|| myY > 400 || myY < 0)
		{	
			myX = 200;
			myY = 200;
		}
	}

	public void show(){
		noStroke();
		fill(255, 0, 0);
		text( m_Num, (int)myX, (int)myY);

	}
}

