// MAIN PROGRAM
//class name, constructor name and file name MUST ALL BE THE SAME
//Global Variables
ArrayList <Bubble> myBubbles;
int nBubbles = 100;
Bubble aBub;


void setup() {
  size(500, 700);
  myBubbles = new ArrayList <Bubble> ();
  for (int i = 0; i < nBubbles; i++) {
    myBubbles.add(new Bubble());
  }
}

void draw() {
  
  background(255);
 
  for (int i = 0; i < myBubbles.size(); i++) {
    aBub = myBubbles.get(i);
    aBub.rise_wiggle();
    aBub.show();
    if (aBub.y < 350 && aBub.bColor[0]==0) {
      myBubbles.remove(i);
      nBubbles--;
      i--;
    }
  }
 
  //if (height > 350) {

  //}

  System.out.println(millis());
  fill (0);
  text("Total="+nBubbles, width/3, height-20);
  
  fill (350);
}
