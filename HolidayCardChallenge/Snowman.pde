public class Snowman {
  float z;
  float headSize;
  public Snowman(float h) { //x, y and z coordinates of head
    z=h*2;
    headSize=h; //most things that are created will use headSize in order to be proportional
  }
  public void drawBody() {
    pushMatrix();
    //head
    fill(255);
    noStroke();
    lights();
    translate(0,0,0);
    sphere(headSize);
    //middle of body
    noStroke();
    lights();
    translate(0,0,z*.75);
    sphere(headSize*.75);
    //bottom of body
    noStroke();
    lights();
    translate(0,0,z*.5);
    sphere(headSize*.5);
    popMatrix();
    //pushpop to go back to origin
  }
  public void drawFace() { 
    pushMatrix();
    translate((headSize*.2),(headSize*.45),(headSize*2.65)); //right eye
    fill(100);
    sphere(headSize/15);
    popMatrix();
    pushMatrix();
    translate(0-(headSize*.2),(headSize*.45),(headSize*2.65)); //left eye
    fill(100);
    sphere(headSize/15);
    popMatrix();
    pushMatrix();
    translate(0,(headSize*.5),(headSize*2.4)); //mouth
    fill(100);
    sphere(headSize/15);
    popMatrix();
    pushMatrix();
    translate(0,0,(headSize*3.05)); //bottom of hat
    fill(139,69,19);
    box(headSize*.8, headSize*.8,headSize/10);
    popMatrix();
    pushMatrix();
    translate(0,0, headSize*3.2);
    fill(139,69,19);
    box(headSize*.5, headSize*.5,headSize/3);
    popMatrix();

  }
  public void buttons() {
    pushMatrix(); 
    translate(0,(headSize*.75)-(headSize/20),(headSize*.75));
    fill(100);
    sphere(headSize/10); //bottom button on lowest body
    popMatrix();
    pushMatrix(); 
    translate(0,(headSize*.75),(headSize*1.5));
    fill(100);
    sphere(headSize/10); //middle button
    popMatrix();
    pushMatrix();
    translate(0,(headSize*.75)-(headSize/15),(headSize*1.25));
    fill(100);
    sphere(headSize/10); //lower button
    popMatrix();
    pushMatrix();
    translate(0,(headSize*.75)-(headSize/15),(headSize*1.75));
    fill(100);
    sphere(headSize/10); //highest button
    popMatrix();
  }
}
