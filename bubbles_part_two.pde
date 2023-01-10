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

  for (int i = 0; i < nBubbles; i++) {
    aBub = myBubbles.get(i);
    aBub.rise_wiggle();
    aBub.show();
  }
  System.out.println(millis());
}
