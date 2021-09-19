Die die1;
Die die2;
Die die3;
Die die4;
DiceCup cup;

color bg = color(0, 160, 60);

void setup() {
  size(1000, 1000);
  background(bg);
  // Initializing and adding dices
  cup = new DiceCup();
  die1 = new Die(color(255), color(0));
  cup.addDie(die1);
  die2 = new Die(color(255), color(0));
  cup.addDie(die2);
  die3 = new Die(color(255), color(0));
  cup.addDie(die3);
  die4 = new Die(color(255), color(0));
  cup.addDie(die4);

  // Adding methods
  cup.shake();
  cup.drawDices(100, 100, 100);
}


void draw() {
  // Framerate for the roll
  frameRate(30);
  // Press 'ENTER' to roll
  if (keyPressed) {
    if (key == ENTER) {
      delay(250);
    }
    cup.shake();
    cup.drawDices(100, 100, 100);
  }
}
