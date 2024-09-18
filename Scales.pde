void setup(){
size(1000, 1000);
}

void draw(){
//row-making
for (int y = 1150; y >= -200; y-=75){
for(int x = -100; x <= 1200; x+=100){
strokeWeight(3);
//main scale
randomizeColor();
outerScale(x,y);
//inner scale
randomizeColor();
innerScale(x,y);
}
}
}

void randomizeColor(){
int ms = millis();
if (ms%2000 < 1000){
fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
}

void outerScale(int x, int y){
beginShape();
curveVertex(x,  y);
curveVertex(x+25,  y+100);
curveVertex(x+60,  y+200);
curveVertex(x+125,  y+250);
curveVertex(x+190, y+200);
curveVertex(x+225, y+100);
curveVertex(x+250, y);
endShape();
}

void innerScale(int x, int y){
beginShape();
curveVertex(x,  y-25);
curveVertex(x+25,  y+75);
curveVertex(x+60,  y+175);
curveVertex(x+125,  y+225);
curveVertex(x+190, y+175);
curveVertex(x+225, y+75);
curveVertex(x+150, y-25);
endShape();
}
