class Rect extends Shape {
  protected PVector vr1;
  protected PVector vr2;
  protected PVector vr3;
  protected PVector vr4;
 
  public Rect() {
    vr1 = new PVector(0, 0);
    vr2 = new PVector(30, -30);
    vr3 = new PVector(60, 0);
    vr4 = new PVector(30, 30);
  }

  @Override
  protected void drawShape() {
     beginShape(QUADS);
      vertex(vr1.x, vr1.y);
      vertex(vr2.x, vr2.y);
      vertex(vr3.x, vr3.y);
      vertex(vr4.x, vr4.y);      
      endShape();

  }

  public PVector vr1() {
    return vr1;
  }
 public PVector vr2() {
    return vr2;
  }
   public PVector vr3() {
    return vr3;
  }
  public PVector vr4() {
    return vr4;
  }

}