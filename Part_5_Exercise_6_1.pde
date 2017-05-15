//Zach Eckley 5/12/17

JitterBug jit;
JitterBug bug;
JitterBug Beetle;
void setup() {
 size(480, 120);
 smooth();
 jit = new JitterBug(width * 0.25, height/2, 50);
 bug = new JitterBug(width * 0.75, height/2, 10);
 Beetle = new JitterBug(width*.5,height/2,20);
}

void draw() {
 jit.move();
 jit.display();
 jit.col();
 bug.move();
 bug.display();
 bug.col();
 Beetle.move();
 Beetle.tri();
 Beetle.col();
} 