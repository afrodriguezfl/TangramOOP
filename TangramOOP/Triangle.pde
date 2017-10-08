class Triangle extends Shape {
  protected PVector vt1;
  protected PVector vt2;
  protected PVector vt3;
 
  public Triangle() {
    vt1 = new PVector(0, 0);
    vt2 = new PVector(-60, -60);
    vt3 = new PVector(60, -60);
      }

  @Override
  protected void drawShape() {
     beginShape(TRIANGLES);
      vertex(vt1.x, vt1.y);
      vertex(vt2.x, vt2.y);
      vertex(vt3.x, vt3.y);
      endShape();

  }

  public PVector vt1() {
    return vt1;
  }
 public PVector vt2() {
    return vt2;
  }
   public PVector vt3() {
    return vt3;
  }
}