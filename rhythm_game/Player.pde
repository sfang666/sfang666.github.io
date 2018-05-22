class Player{
int _playerX;
int _playerY;
int _playerSize;
int _startY;
int gravity=8;
int jumpCounter=0;
int jumpCounterLimit=20;
boolean land=true;  //used to determine when player is allowed to jump
boolean  jumping=false; //used to trigger jump
float jumpAngle=0;
float incrementAngle=-PI/10;
PImage face1,face2,face3;


Player(int x, int y, int size){
  _playerX=x;
  _playerY=y;
  _playerSize=size;
  _startY=y;
}

  void jump(){
    if(land==true){
    jumping=true;
   }
  }
  void physics(){
    if(_playerY<_startY){
     _playerY+=gravity;
     land = false;
    }else{
    land =true;
    }
    
    if(jumping==true){
    _playerY-=16;
    jumpCounter+=1;
    }
    if(jumpCounter>=jumpCounterLimit){
    jumping=false;
    jumpCounter=0;
    }
    if(land==false){
    jumpAngle+=incrementAngle; 
    }
    if(land==true){
    jumpAngle=0; 
    }
  }
    
    int getX(){ 
    return _playerX+_playerSize/2; 
    }
    int getY(){
    return _playerY+_playerSize/2;
    }
  
  
  void display1(){
    pushMatrix();
    rectMode(CENTER);
    translate(_playerX,_playerY);
    rotate(jumpAngle);
    rect(0,0,_playerSize,_playerSize); 
    face1=loadImage("c1.png");
    image(face1,-_playerSize/2,-_playerSize/2,_playerSize,_playerSize); 
    
    //beginShape();
    //texture(face1);
    //vertex(0,0,0,0);
    //vertex(_playerSize,0,60,0);
    //vertex(_playerSize,_playerSize,60,60);
    //vertex(0,_playerSize,0,60);
    //endShape(CLOSE);
    popMatrix();
  }
  
    void display2(){
    pushMatrix();
    rectMode(CENTER);
    translate(_playerX,_playerY);
    rotate(jumpAngle);
    rect(0,0,_playerSize,_playerSize); 
    face2=loadImage("c2.png");
    image(face2,-_playerSize/2,-_playerSize/2,_playerSize,_playerSize); 
    popMatrix();  
    }
    
   void display3(){
    pushMatrix();
    rectMode(CENTER);
    translate(_playerX,_playerY);
    rotate(jumpAngle);
    rect(0,0,_playerSize,_playerSize); 
    face3=loadImage("c3.png");
    image(face3,-_playerSize/2,-_playerSize/2,_playerSize,_playerSize); 
    popMatrix();  
    }
  
}
