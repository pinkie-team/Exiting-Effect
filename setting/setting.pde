void settings(){
  //size(640, 480);
  fullScreen();
}

void setup() {
  colorMode(HSB,100);
  background(0);
  smooth();
  frameRate(30);
}

void draw() {
  background(0);
  showCuror();
  showintro();
}

void showintro(){
  fill(0, 0, 100);
  textSize(35);
  textAlign(CENTER);
  text("Put 2 sensors in the cursor.", width/2, height/2);
}

void showCuror(){
    float margin_w, margin_h;

    margin_w = width * 0.3;
    margin_h = height * 0.3;
    	
    fill(31,98,85);
    rectMode(CENTER);
    rect(width / 2 + margin_w, height / 2 - margin_h, width / 6, height / 6);
    rect(width / 2 - margin_w, height / 2 + margin_h, width / 6, height / 6);
}