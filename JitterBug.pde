class JitterBug {
 float x;
 float y;
 int diameter;
 float speed = 2.5;
 float R;
 float G;
 float B;
 JitterBug(float tempX, float tempY, int tempDiameter) {
 x = tempX;
 y = tempY;
 diameter = tempDiameter;
 }
 void move() {
 x += random(-speed, speed);
 y += random(-speed, speed);
 }
 void display() {
   fill(R,G,B);
   ellipse(x, y, diameter, diameter);
 }
 void tri(){
   fill(R,G,B);
   triangle(x,y,x-(diameter/2),y+diameter,x+(diameter/2),y+diameter);
 }
 void col(){
   R=255;
   G=255;
   B=255;
   fill(R,G,B);
   if(keyPressed&&key==CODED){
     if(keyCode==UP){
       G=G-255;
       B=B-255;
     }
     if(keyCode==RIGHT){
       R=R-255;
       B=B-255;
     }
     if(keyCode==LEFT){
       R=R-255;
       G=G-255;
     }
   }
 }
 void weight(){
   if(keyPressed&&key==CODED){
     if(keyCode==SHIFT){
       diameter+=10;
     }
     if(keyCode==CONTROL){
       diameter-=10;
     }
   }
 } 
}