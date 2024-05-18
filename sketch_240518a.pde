float x,y;
int startX=50;
int startY=320;
color c;
float stroke;
float size;
float sizee;

void setup(){

size(640,640);
background(#E3753E);
frameRate(10);
c = color(random(255),random(255),random(255));
stroke = 1;
size = 10;
x=startX;
y=startY;
  
}

void draw(){
for(int s=0;s<5;s++){
  
for(int i =0;i<50;i++){

x= random(1,640);
y=random(1,640);

sizee= size;
c=(#3E60E3);
strokeWeight(stroke);
stroke(random(255),random(255),random(255));


for(int j=0; j<5; j++){

  if(j==0){
  fill(c,0);
  }
  if(j>0&&j<5){
   fill(c,50); 
  }if(j==5){
   fill(c,75); 
  }
  strokeWeight(stroke);
  circle(x,y, sizee);
  sizee+=5;
  x-=20;
  
}
x+=5;
stroke+=0.1;
size+=1;
}

noLoop();
saveFrame("opit-"+s+".png");
}

}
