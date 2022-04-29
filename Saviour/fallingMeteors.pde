class Meteor{

  public int xCor; // public is the new variable command leanrt
  public int yCor;     // all fields and methods are public unless otherwise specified by the private keyword.
  public int size;
  ArrayList<PVector> trail;

  Meteor(int xVal, int yVal, int s){
    xCor = xVal;
    yCor = yVal;
    size = s;
    trail = new ArrayList<PVector>();
    
  } 
  
  public void drop(float speed){  // the speed of thefalling Meteor
    yCor += speed;
  }
  
  private void display(){
    int size = 10;
    fill(200, 100, 50);
    circle(xCor, yCor, size);
    
    for(int trails = 0; trails < 10; trails++){
      float range = random(-size/2,size/2);
      stroke(255, 165, 0);
      line(xCor-range, yCor-5, xCor-range, yCor-(random(50,70)));

    }
  }
}
