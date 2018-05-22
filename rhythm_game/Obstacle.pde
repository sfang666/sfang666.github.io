class Obstacle{
int _startX;
int _squareX;
int _squareY;
int _circleX;
int _circleY;
int _speed;
boolean _ignore;

  Obstacle(int x){
    _startX=x;
    _squareX=_startX;
    _ignore=false;
    _circleX=_startX;
  }
  
  void square(int y){
    _squareY=y;
    rectMode(CENTER);
    rect(_squareX,_squareY,64,64);
    _squareX-=_speed;
  }
  
  void circle(int y){
    _circleY=y;
    ellipse(_circleX,_circleY,64,64);
    _circleX-=_speed;
  }
  void ignore(){
  _ignore=true;
  }
  
  void move(int speed){
  _speed=speed;
  }
  
  int squareGetX1(){ 
    return _squareX-32;
  }
  int squareGetX2(){ 
    return _squareX+96;
  }
  int squareGetY1(){ 
    return _squareY-32;
  }
  int squareGetY2(){ 
    return _squareY+32;
  }
}
