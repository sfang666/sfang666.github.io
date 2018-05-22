//  PImage cha1j1;
//PImage cha1j2;
//PImage cha1j3;
//PImage cha1j4;
//PImage cha1j5;
//PImage cha1j6, cha1j7, cha1j8, cha1j9, cha1j10, cha1j11, cha1j12;
//PImage cha1j13, cha1j14, cha1j15, cha1j16, cha1j17, cha1j18, cha1j19, cha1j20, cha1j21, cha1j22, cha1j23, cha1j24;
PImage ground1, ground2, ground3;
PImage bg, bg2, bg3;
PImage processing,egg;
PImage readme;
PImage c1,c2,c3;
int proX=1000;
int proY=525;
int eggX=80;
int eggY=525;
int bgVar=1;
int eggSpeed=0;
int pickHero=1;
boolean eggActivated=false;
boolean win=false;


import ddf.minim.*;

int sceneCount=0;
int var=0;
int gX1=0;
int obSpeed=4;
int obFloatSpeed=8;

int tabTime=0;

Minim minim;
AudioPlayer tutorial;
AudioPlayer death;

Player hero;
Obstacle[] obstacles = new Obstacle[300];
Obstacle[] floatobs = new Obstacle[300];

int timer=0;
int timer1=0;
int timer2=0;
int clickTime=0;
int deathCounter=0;
int highScore=0;
int fade=0;
boolean land=true;
boolean dead=false;

void setup() {
  size(1000, 600, P2D);
  frameCount=60;
  hero = new Player(150, 524, 64);
  for (int i=0; i<300; i++) {
    obstacles[i]= new Obstacle(1000);
    floatobs[i]= new Obstacle(1000);
  }
  ground1=loadImage("ground.png");
  ground2=loadImage("ground.png");
  bg=loadImage("background.png");
  bg2=loadImage("background2.png");
  bg3=loadImage("background3.png");
  c1=loadImage("c1.png");
  c2=loadImage("c2.png");
  c3=loadImage("c3.png");
  minim = new Minim(this);
  tutorial = minim.loadFile("track1.mp3");
  death  =  minim.loadFile("death.mp3");
  processing=loadImage("obstacles.jpg");
  egg=loadImage("egg.png");
  readme=loadImage("readme.png");
}

void draw() {
  switch(sceneCount) {
  case 0:
  background(195);
  textSize(60);
  textAlign(CENTER);
  text("Fancy Dash",500,100);
  image(readme,550,130);
  image(c1,150,180);
  image(c2,150,300);
  image(c3,150,420);
  button();
    break;
  case 1:
    tutorial.play();
    bgChange(); 
    scoreBoard();   

    for (int i=0; i<300; i++) {
      obstacles[i].move(obSpeed);
      floatobs[i].move(obFloatSpeed);
    }

    drawObs();
    easterEgg();
    
    if(pickHero==1){
      hero.display1();
    }
    if(pickHero==2){
      hero.display2();
    }
    if(pickHero==3){
      hero.display3();
    }
    
    hero.physics();
    timer();
    ground();
    showText();
    
    if(eggActivated==false){
      collision();
    }
    
    //    cha1j1=loadImage("cha1j1.png");
    //    cha1j2=loadImage("cha1j2.png");
    //    cha1j3=loadImage("cha1j3.png");
    //    cha1j4=loadImage("cha1j4.png");
    //    cha1j5=loadImage("cha1j5.png");
    //    cha1j6=loadImage("cha1j6.png");
    //    cha1j7=loadImage("cha1j7.png");
    //    cha1j8=loadImage("cha1j8.png");
    //    cha1j9=loadImage("cha1j9.png");
    //    cha1j10=loadImage("cha1j10.png");
    //    cha1j11=loadImage("cha1j11.png");
    //    cha1j12=loadImage("cha1j12.png");
    //    cha1j13=loadImage("cha1j13.png");
    //    cha1j14=loadImage("cha1j14.png");
    //    cha1j15=loadImage("cha1j15.png");
    //    cha1j16=loadImage("cha1j16.png");
    //    cha1j17=loadImage("cha1j17.png");
    //    cha1j18=loadImage("cha1j18.png");
    //    cha1j19=loadImage("cha1j19.png");
    //    cha1j20=loadImage("cha1j20.png");
    //    cha1j21=loadImage("cha1j21.png");
    //    cha1j22=loadImage("cha1j22.png");
    //    cha1j23=loadImage("cha1j23.png");
    //    cha1j24=loadImage("cha1j24.png");

    //    if (land==true) {
    //      image(cha1j1, 100, 350);
    //    }
    //    if (land==false) {           
    //      if (tabTime>=0 && tabTime<=41) {
    //        image(cha1j2, 100, 350);
    //      }
    //      if (tabTime>=42 && tabTime<=83) {
    //        image(cha1j3, 100, 344);
    //      }
    //      if (tabTime>=84 && tabTime<=125) {
    //        image(cha1j4, 100, 338);
    //      }
    //      if (tabTime>=126 && tabTime<=166) {
    //        image(cha1j5, 100, 332);
    //      }
    //      if (tabTime>=167 && tabTime<=208) {
    //        image(cha1j6, 100, 326);
    //      }
    //      if (tabTime>=209 && tabTime<=250) {
    //        image(cha1j7, 100, 320);
    //      }
    //      if (tabTime>=251 && tabTime<=292) {
    //        image(cha1j8, 100, 314);
    //      }
    //      if (tabTime>=293 && tabTime<=333) {
    //        image(cha1j9, 100, 308);
    //      }
    //      if (tabTime>=334 && tabTime<=375) {
    //        image(cha1j10, 100, 302);
    //      }
    //      if (tabTime>=376 && tabTime<=416) {
    //        image(cha1j11, 100, 296);
    //      }
    //      if (tabTime>=417 && tabTime<=458) {
    //        image(cha1j12, 100, 290);
    //      }
    //      if (tabTime>=459 && tabTime<=500) {
    //        image(cha1j13, 100, 290);
    //      } 
    //      if (tabTime>=501 && tabTime<=542) {
    //        image(cha1j14, 100, 290);
    //      } 
    //      if (tabTime>=543 && tabTime<=583) {
    //        image(cha1j15, 100, 290);
    //      } 
    //      if (tabTime>=584 && tabTime<=625) {
    //        image(cha1j16, 100, 290);
    //      } 
    //      if (tabTime>=626 && tabTime<=666) {
    //        image(cha1j17, 100, 296);
    //      } 
    //      if (tabTime>=667 && tabTime<=708) {
    //        image(cha1j18, 100, 302);
    //      } 
    //      if (tabTime>=709 && tabTime<=750) {
    //        image(cha1j19, 100, 308);
    //      } 
    //      if (tabTime>=751 && tabTime<=792) {
    //        image(cha1j20, 100, 314);
    //      } 
    //      if (tabTime>=793 && tabTime<=833) {
    //        image(cha1j21, 100, 320);
    //      } 
    //      if (tabTime>=834 && tabTime<=875) {
    //        image(cha1j22, 100, 326);
    //      } 
    //      if (tabTime>=876 && tabTime<=916) {
    //        image(cha1j23, 100, 332);
    //      } 
    //      if (tabTime>=917 && tabTime<=958) {
    //        image(cha1j24, 100, 338);
    //      } 
    //      if (tabTime>=959 && tabTime<=1000) {
    //        image(cha1j1, 100, 344);
    //        land=true;
    //      }
    //    }
    break;
  }
}

void mousePressed() {
  switch(sceneCount) {
  case 0:
  if(mouseX>=280 &&mouseX<=340 &&mouseY>=190 &&mouseY<=220){
    pickHero=1;
   sceneCount=1;
   clickTime=millis();
  }
  if(mouseX>=280 &&mouseX<=340 &&mouseY>=310 &&mouseY<=340){
    pickHero=2;
   sceneCount=1;
   clickTime=millis();
  }
  if(mouseX>=280 &&mouseX<=340 &&mouseY>=430 &&mouseY<=460){
    pickHero=3;
   sceneCount=1;
   clickTime=millis();
  }
    break;
  case 1:

    break;
  }
}

void keyPressed() {
  switch(sceneCount) {
  case 0:

    break;
  case 1:

    if (key=='w'||key==' '||keyCode==UP) {
      hero.jump();
      timer2=millis();
      land=false;
    }
    if(key=='j'||key=='l'){
      eggSpeed=10;
    }
    //if(key=='r'){
    //  reset();
    //}
    break;
  }
}

void collision() {
  for (int i = 0; i < 300; i++) {
    if (hero.getX() > obstacles[i].squareGetX1() && hero.getX() < obstacles[i].squareGetX2()) {
      if (hero._playerY > obstacles[i].squareGetY1() && hero._playerY < obstacles[i].squareGetY2()) {
        println("Death by Square");
        obSpeed=0;
        obFloatSpeed=0;
        tutorial.close();
        dead=true;
      }
      if (hero.getY() < obstacles[i].squareGetY1()) { 
        hero._startY = obstacles[i].squareGetY1()-34;
      }
    }
    if (hero.getX() > floatobs[i].squareGetX1() && hero.getX() < floatobs[i].squareGetX2()) {
      if (hero._playerY > floatobs[i].squareGetY1() && hero._playerY < floatobs[i].squareGetY2()) {
        println("Death by Floating Square");
        obSpeed=0;
        obFloatSpeed=0;
        tutorial.close();
        dead=true;
      }
      if (hero.getY() < floatobs[i].squareGetY1()) { 
        hero._startY = floatobs[i].squareGetY1()-34;
      }
    }
    if (dist(hero.getX(), hero.getY(), obstacles[i]._circleX, obstacles[i]._circleY)<32) {
      println("Death by Circle");
      obSpeed=0;
      obFloatSpeed=0;
      tutorial.close();
      dead=true;
      
    }
    if (hero.getX() > obstacles[i].squareGetX2() && !obstacles[i]._ignore) { 
      hero._startY = 524;
      obstacles[i].ignore(); 
    }
    if (hero.getX() > floatobs[i].squareGetX2() && !floatobs[i]._ignore) { 
      hero._startY = 524;
      floatobs[i].ignore(); 
    }
  }
}

void scoreBoard(){
    timer1=(millis()-clickTime)/1000;
    timer2=timer1;
    if(dead==false){
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text(timer1, 80, 80);
    }
    if(dead==true && win ==false){
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text("You are dead", 160, 80);
    death.play();
    timer2-=10;
    }
    if(dead==true && win ==true){
     textSize(50);
    textAlign(CENTER);
    fill(255);
    text("You have won this game", 160, 80);
    timer2-=10;
    }
    if(timer2>highScore){
    highScore=timer2;
    }
    textSize(50);
    textAlign(CENTER);
    fill(255);
    text("Highscore:"+highScore, 830, 80);
    textSize(35);
    textAlign(CENTER);
    fill(255);
    text("Press R to Restart", 160, 160);
    textSize(20);
    textAlign(CENTER);
    fill(255);
    text("Restart Function Is In Progress", 160, 210);
    textSize(25);
    textAlign(CENTER);
    fill(255);
    text("cmd+w & cmd+r to restart", 160, 240);
    
}


void button(){
  fill(167,64,0);
  rect(280,190,60,30);
  if(mouseX>=280 &&mouseX<=340 &&mouseY>=190 &&mouseY<=220){
   fill(240,240,94);
   rect(280,190,60,30);
  }
  textSize(20);
  fill(0);
  text("pick",310,209);
  
  fill(167,64,0);
  rect(280,310,60,30);
  if(mouseX>=280 &&mouseX<=340 &&mouseY>=310 &&mouseY<=340){
   fill(240,240,94);
   rect(280,310,60,30);
  }
  textSize(20);
  fill(0);
  text("pick",310,329);
  
  fill(167,64,0);
  rect(280,430,60,30);
  if(mouseX>=280 &&mouseX<=340 &&mouseY>=430 &&mouseY<=460){
   fill(240,240,94);
   rect(280,430,60,30);
  }
  textSize(20);
  fill(0);
  text("pick",310,449);
}

void bgChange() {
  if (bgVar==1) {
    background(bg);
  }
  if (bgVar==2) {
    background(bg2);
  }
  if (bgVar==3)
    background(bg3);
}

void showText() {
  if (timer>1760 && timer <2000) {
    textAlign(CENTER);
    fill(216,0,76);
    text("Ready For the Next Level?", 500, 300);
  }
  if (timer>3580 && timer <3820) {
    textAlign(CENTER);
    fill(255);
    text("Easy For You?Try This!", 500, 300);
  }
  if (timer>5700 && timer <6000) {
    textAlign(CENTER);
    fill(255);
    text("Congratulations!", 500, 300);
  }
}
void timer() {
  timer+=1;
  println(timer);
}
void ground() {
  image(ground1, gX1, 555);
  image(ground2, gX1+600, 555);
  image(ground1, gX1+1200, 555);
  gX1-=obSpeed;
  if (gX1<=-600) {
    gX1=0;
  }
}

void reset() { 
  tutorial.close();
  death.close();
  timer = 0;
  dead=false;
  win=false;
  eggSpeed=0;
  eggActivated=false;
  obSpeed=4;
  obFloatSpeed=8;
  bgVar=1;
  for (int i = 0; i < 300; i++) {
    obstacles[i] = new Obstacle(1000);
    floatobs[i]= new Obstacle(1000);
  }
  hero._startY = 524;
  sceneCount=0;
}

void easterEgg(){
  if(timer>0 && timer<200){
  image(egg,eggX-32,eggY-32);
  eggX+=eggSpeed;
  }
  if (eggX==150 && timer<200){
       eggActivated=true; 
      }
}

void drawObs() {
  //0-11s
  if (timer>60) {
    obstacles[1].square(525);
    image(processing, proX-32, proY-32);
    proX-=obSpeed;
  }
  if (timer>110) {
    obstacles[2].square(525);
  }
  if (timer>160) {
    obstacles[3].square(525);
  }
  if (timer>210) {
    obstacles[4].square(525);
  }
  if (timer>260) {
    obstacles[5].square(525);
  }

  //12-21s
  if (timer>360) {
    obstacles[6].square(525);
  }
  if (timer>400) {
    obstacles[7].square(461);
  }
  if (timer>440) {
    obstacles[8].square(397);
  }
  if (timer>500) {
    obstacles[9].square(525);
  }
  if (timer>540) {
    obstacles[10].square(461);
  }
  if (timer>580) {
    obstacles[11].square(397);
  }
  if (timer>650) {
    obstacles[12].square(525);
  }
  if (timer>690) {
    obstacles[13].square(461);
  }
  if (timer>730) {
    obstacles[14].square(397);
  }
  if (timer>800) {
    obstacles[15].square(525);
  }
  if (timer>840) {
    obstacles[16].square(461);
  }
  if (timer>880) {
    obstacles[17].square(397);
  }

  //22s-37s
  if (timer>1020) {
    obstacles[18].square(525);
  }
  if (timer>1080) {
    obstacles[19].square(525);
  }
  if (timer>1140) {
    obstacles[20].square(525);
  }
  if (timer>1200) {
    obstacles[21].square(525);
  }
  if (timer>1260) {
    obstacles[22].square(525);
  }
  if (timer>1320) {
    obstacles[23].square(525);
  }
  if (timer>1380) {
    obstacles[24].square(525);
  }
  if (timer>1440) {
    obstacles[25].square(525);
  }
  if (timer>1760) {
    bgVar=2;
  }

  //part2: 38s-60s
  if (timer>2040) {
    obstacles[26].square(525);
  }
  if (timer>2080) {
    obstacles[27].square(461);
  }
  if (timer>2120) {
    obstacles[28].square(397);
  }
  if (timer>2160) {
    obstacles[29].square(333);
  }
  if (timer>2200) {
    obstacles[30].square(269);
  }
  if (timer>2400) {
    obstacles[31].square(525);
  }
  if (timer>2440) {
    obstacles[32].square(461);
  }
   if (timer>2460) {
    obstacles[201].circle(525);
  }
  if (timer>2480) {
    obstacles[33].square(397);
  }
  if (timer>2500) {
    obstacles[202].circle(461);
  }
  if (timer>2520) {
    obstacles[34].square(333);
  }
   if (timer>2540) {
    obstacles[203].circle(525);
  }
  if (timer>2560) {
    obstacles[35].square(269);
  }
  if (timer>2760) {
    obstacles[36].square(525);
  }
  if (timer>2800) {
    obstacles[37].square(461);
  }
  if (timer>2840) {
    obstacles[38].square(461);
  }
  if (timer>2880) {
    obstacles[39].square(397);
  }
  if (timer>2920) {
    obstacles[40].square(397);
  }
  if (timer>3120) {
    obstacles[41].square(525);
  }
  if (timer>3160) {
    obstacles[42].square(461);
  }
  if (timer>3200) {
    obstacles[43].square(461);
  }
  if (timer>3240) {
    obstacles[44].square(397);
  }
  if (timer>3280) {
    obstacles[45].square(397);
  }
  //part3 61-end
  if (timer>3580) {
   bgVar=3;
  }
  if (timer>4000) {
    obstacles[46].square(525);
  }
  if (timer>4030) {
    obstacles[47].square(461);
  }
  if (timer>4060) {
    obstacles[204].circle(525);
  }
  if (timer>4080) {
    obstacles[205].circle(525);
  }
  if (timer>4100) {
    obstacles[206].circle(525);
  }
  if (timer>4120) {
    obstacles[207].circle(525);
  }
  if (timer>4140) {
    obstacles[208].circle(525);
  }
  if (timer>4160) {
    obstacles[209].circle(525);
  }
  if (timer>4180) {
    obstacles[48].square(461);
  }
  if(timer>4180){
    floatobs[1].square(397);  
  }
  if(timer>4230){
    floatobs[2].square(397);
  }
  
  if (timer>4300) {
    obstacles[49].square(525);
  }
  if (timer>4330) {
    obstacles[50].square(461);
  }
  if (timer>4360) {
    obstacles[210].circle(525);
  }
  if (timer>4380) {
    obstacles[211].circle(525);
  }
  if (timer>4400) {
    obstacles[212].circle(525);
  }
  if (timer>4420) {
    obstacles[213].circle(525);
  }
  if (timer>4440) {
    obstacles[214].circle(525);
  }
  if (timer>4460) {
    obstacles[215].circle(525);
  }
  if (timer>4480) {
    obstacles[51].square(461);
  }
  if(timer>4480){
    floatobs[3].square(397);  
  }
  if(timer>4530){
    floatobs[4].square(397);
  }
  
  if (timer>4600) {
    obstacles[52].square(525);
  }
  if (timer>4630) {
    obstacles[53].square(461);
  }
  if (timer>4660) {
    obstacles[216].circle(525);
  }
  if (timer>4680) {
    obstacles[217].circle(525);
  }
  if (timer>4700) {
    obstacles[218].circle(525);
  }
  if (timer>4720) {
    obstacles[219].circle(525);
  }
  if (timer>4740) {
    obstacles[220].circle(525);
  }
  if (timer>4760) {
    obstacles[221].circle(525);
  }
  if (timer>4780) {
    obstacles[222].circle(525);
  }
  if (timer>4800) {
    obstacles[223].circle(525);
  }
  if (timer>4820) {
    obstacles[224].circle(525);
  }
  if (timer>4840) {
    obstacles[225].circle(525);
  }
  if (timer>4860) {
    obstacles[226].circle(525);
  }
  if (timer>4880) {
    obstacles[54].square(461);
  }
  if(timer>4780){
    floatobs[5].square(397);  
  }
  if(timer>4830){
    floatobs[6].square(397);
  }
  if(timer>4880){
    floatobs[7].square(397);
  }
  if(timer>4930){
    floatobs[8].square(397);
  }
  
  if (timer>5000) {
    obstacles[55].square(525);
  }
  if (timer>5030) {
    obstacles[56].square(461);
  }
  if (timer>5060) {
    obstacles[227].circle(525);
  }
  if (timer>5080) {
    obstacles[228].circle(525);
  }
  if (timer>5100) {
    obstacles[229].circle(525);
  }
  if (timer>5120) {
    obstacles[230].circle(525);
  }
  if (timer>5140) {
    obstacles[231].circle(525);
  }
  if (timer>5160) {
    obstacles[232].circle(525);
  }
  if (timer>5180) {
    obstacles[233].circle(525);
  }
  if (timer>5200) {
    obstacles[234].circle(525);
  }
  if (timer>5220) {
    obstacles[235].circle(525);
  }
  if (timer>5240) {
    obstacles[236].circle(525);
  }
  if (timer>5260) {
    obstacles[237].circle(525);
  }
  if (timer>5280) {
    obstacles[57].square(461);
  }
  if(timer>5180){
    floatobs[9].square(397);  
  }
  if(timer>5230){
    floatobs[10].square(397);
  }
  if(timer>5280){
    floatobs[11].square(397);
  }
  if(timer>5330){
    floatobs[12].square(397);
  }
  if(timer>5700){
    obSpeed=0;
    win=true;
    dead=true;
  }
}
