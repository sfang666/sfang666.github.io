import ddf.minim.*;

Minim minim;
AudioSample kick;
color bColor = color(255, 255, 255);
PImage drum;
PImage skick;
PImage skickk;
int stage=1;
int skickkX=100;
int skickkY=500;
int redY=108;
int var=1;
int rY=135;
int ba=1;

void setup(){
size(400,600);


 minim = new Minim(this);
 kick = minim.loadSample( "drumsound.mp3", 512);
 drum=loadImage("drumm.png");
 skick=loadImage("skick.png");
 skickk=loadImage("skickk.png");
 
}
void draw(){
  background(0);

  if(stage==1){
strokeWeight(random(3, 10));
  stroke(random(255), random(255), random(255));
  float rainbow_size = random(200, 270);
  ellipse(200, 400, rainbow_size, rainbow_size);

//人物的绘制
strokeWeight(3);
ellipse(180,120,120,100);

//包子
line(100,100,125,140);
ellipse(100,100,60,50);

//眼睛的绘制
fill(0,0,0);
ellipse(158,105,15,15);
ellipse(210,115,15,15);

//绘制红晕
fill(255,193,193);
stroke(255,193,193);
ellipse(140,redY,17,17);
ellipse(210,rY,17,17);

if(redY==128){
  var=-1;
}
if(redY==108){
  var=1;
}
redY=redY+var;
if(rY==130){
ba=1;
}
if(rY==135){
ba=-1;
}
rY=rY+ba;

//嘴巴
fill(250,250,250);
stroke(0,0,0);
ellipse(175,120,15,20);
ellipse(188,122,15,20);
stroke(250,250,250);
ellipse(185,112,30,20);

//一些线条的绘制
stroke(0,0,0);
line(150,90,165,88);
line(215,98,222,108);
line(90,85,85,90);
line(95,85,95,90);
line(105,85,110,90);
line(60,93,50,90);
line(60,99,45,105);
line(60,108,53,115);

//桌台的绘制
fill(250,250,250);
stroke(0,0,0);
rect(20,140,260,40);
  }
if(stage==2){

  background(bColor);
  image(drum,0,50);
  image(skick,mouseX-100,mouseY,100,100);
 
  image(skickk,skickkX,skickkY,100,100);
    fill(#236CFA);
    textSize(18);
    
     text("How to play?",0,40);
     text("Move mouse to control 1st stick,click to hit",18,70);
     text("Press 'WASD' to move 2nd stick,press 'h'to hit",-1,100);

}

}
void mousePressed(){
  if(stage==1){
    stage=2;
  }

  if(stage==2){
    bColor = color(random(255), random(255), random(255));
  if(mouseX<367 && mouseX>107 && mouseY<462 && mouseY>145){

 kick.trigger();
}
}
}


void keyReleased(){
  if(key == 'a' || key == 'A'){
    skickkX=skickkX-50;
  }
  if(key == 'd' || key == 'D'){
    skickkX=skickkX+50;
  }
  if(key == 'w' || key == 'W'){
    skickkY=skickkY-50;
  }
  if(key == 's' || key == 'S'){
    skickkY=skickkY+50;
  }
  if(key == 'h' || key == 'H'){
    if(skickkX<=367 && skickkX>=102 && skickkY>=145 && skickkY<=462){
       bColor = color(random(255), random(255), random(255));
      kick.trigger();
    }
  }
}
