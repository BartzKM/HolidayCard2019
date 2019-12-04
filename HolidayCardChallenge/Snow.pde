class Snow {
  float x, y, z;
  float size, speed;
  
  public Snow(float x, float y, float z, float size) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.size = size;
    speed=(int)(Math.random()*5)+5;
  }
  
  void show() {
    pushMatrix(); //begin translation
    translate(x, y, z);
    noStroke();
    fill(255);
    sphere(size);
    popMatrix();
  }
  void move() {
    z-=speed;
    if (z<0) {
      z=1000;
    }
  }
}
