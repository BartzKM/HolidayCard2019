import peasy.*;
PeasyCam cam;
//<<<<<<< HEAD
Snowman s=new Snowman(200);
//=======
ArrayList <Snow> snowflakes;
//>>>>>>> cacf3d510ae6af571b4c3ecde9c559b0673f7b08

void setup() {
  fullScreen(P3D);
  cam = new PeasyCam (this, 4000);
  background(0);
  cam.rotateX(-PI/4);
  
  snowflakes = new ArrayList <Snow>();
  for (int i = 0; i < 200; i++) {
    snowflakes.add(new Snow(random(-1000, 1000), random(-1000, 1000), 1000, 5));
  }
}
void draw() {
  background(0);
  lights();
  drawText();
//<<<<<<< HEAD
  s.drawBody();
  s.buttons();
  s.drawFace();
//=======
  for (Snow s : snowflakes) {
    pushMatrix();
    s.show();
    s.move();
    popMatrix();
  }
  fill(255);
  box(2000, 2000, 25);
//>>>>>>> cacf3d510ae6af571b4c3ecde9c559b0673f7b08
}

void drawText() {
  pushMatrix();
  textSize(50);
  
  stroke(255, 0, 0);
  line(0, 0, 0, 1000, 0, 0);
  text("x", 1050, 0, 0);

  stroke(0, 255, 0);
  line(0, 0, 0, 0, 1000, 0);
  text("y", 0, 1050, 0);

  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, 1000);
  text("z", 0, 0, 1050);

  stroke(255, 0, 0);
  line(0, 0, 0, -1000, 0, 0);
  text("-x", -1050, 0, 0);

  stroke(0, 255, 0);
  line(0, 0, 0, 0, -1000, 0);
  text("-y", 0, -1050, 0);

  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, -1000);
  text("-z", 0, 0, -1050);
  popMatrix();
}
