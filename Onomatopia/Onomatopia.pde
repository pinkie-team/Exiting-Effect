float FRICTION = 0.985;

public class Don{
  int x,y;
  float dia;
  float speed;
  int colorH;
  boolean flag;
  
  Don() {
    init(0,0,0,0);
    flag = false;
  }

  public Don(Don src) {
    this.x = src.x;
    this.y = src.y;
    this.speed = src.speed;
    this.colorH = src.colorH;
    this.dia = src.dia;
    this.flag = src.flag;
  }

  public void init(int _x, int _y, float _speed, int _colorH) {
    x = _x;
    y = _y;
    speed = _speed;
    colorH = _colorH;
    dia = 0.0;
    flag = true;
  }

  public void rippleDraw() {
    noFill();
  
    if(speed > 1.0) {
      // stroke(colorH, 60, 99, 100*(speed-1)/3);
      // strokeWeight(4);
      // ellipse(x,y,dia,dia);
      text("dondon", x, y);
      textAlign(CENTER, CENTER); 
      textSize(dia);

    }
    if(speed > 1.5) {
      stroke(colorH, 60, 99, 100*(speed-1.5)/3);
      strokeWeight(2);
      ellipse(x,y,dia*0.7,dia*0.7);
      //text("どん", x, y, dia*0.7,dia*0.7);
    }
    if(speed > 2.0) {
      // stroke(colorH, 60, 99, 100*(speed-2)/3);
      // strokeWeight(1);
      // ellipse(x,y,dia*0.6,dia*0.6);
      //text("ほげほげ", x, y, dia*0.6,dia*0.6);

    }
  }

  public void move() {
    dia += speed;
    speed *= FRICTION;
    if(speed < 0.9) {
      flag = false;
    }
  }

  public boolean getFlag() {
    return flag;
  }
}
