//Class Bubble
class Bubble {
  //ALL METHODS HAVE ACCESS TO PROPERTIES
  int bSize;
  int[] bColor; //length is 4 - all between 0 and 255!
  int x;
  int y;

  //constructor: MUST BE THE CLASS NAME
  //NO TYPE FOR THE CONSTRUCTOR
  Bubble() {
    //this is the constructor
    //compute x, y, size, color
    bSize = (int) (Math.random() * 80) + 20;
    x = (int) (Math.random() * width);
    y = (int) (Math.random()*height);
    if (Math.random()>0.5) {
      bColor= new int[4];
      bColor[0]=255;
      bColor[1]=0;
      bColor[2]=0;
      bColor[3]=255;
    } else {
      bColor= new int[4];
      bColor[0]=0;
      bColor[1]=0;
      bColor[2]=255;
      bColor[3]=255;
    }
  }

  //won't return anything
  //it will still do stuff
  //MUTATOR METHOD
  void rise_wiggle() { //no params
    //speed will be calculated inside of here
    //this will change the x and y values
    //that is the purpose in life for rise
    //based on the size it will set a value for x and y
    float rFactor = 0.05;
    float r = ((int) (Math.random() * 10) + bSize) * rFactor;
    //float r = bSize * rFactor;
    int w = (int) (Math.random() * 9) - 4; //LOCAL variable
    x += w;
    //x += (int) (Math.random() * 9) - 4; SAME AS ^^
    y -= r;
  }

  void show() { //no params
    //this is where we'll draw the bubble
    //it will use the x, y, and size
    //what color?
    fill(bColor[0], bColor[1], bColor[2], bColor[3]);
    ellipse(x, y, bSize, bSize);
    //THAT'S IT!
  }
}
