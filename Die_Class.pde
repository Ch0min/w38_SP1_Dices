class Die {
  color dieColor;
  color eyeColor;
  int x;
  int y;
  int size;
  int dieValue;

  // Constructor
  Die(color tempDC, color tempEC) {
    dieColor = tempDC;
    eyeColor = tempEC;
  }

  int roll() {
    // Giving the roll a random value between 1 and 6
    dieValue = int(random(6)+1);
    return dieValue;
  }

  void drawDie(int x, int y, int size) {
    // boolean array to determine and checks which eyes to show
    boolean[] dEyes = {false, false, false, false, false, false, false } ;
    if (dieValue == 1) {
      dEyes[3] = true;
    } else if (dieValue == 2) {
      dEyes[0] = true;
      dEyes[6] = true;
    } else if (dieValue == 3) {
      dEyes[0] = true;
      dEyes[3] = true;
      dEyes[6] = true;
    } else if (dieValue == 4) {
      dEyes[0] = true;
      dEyes[2] = true;
      dEyes[4] = true;
      dEyes[6] = true;
    } else if (dieValue == 5) {
      dEyes[0] = true;
      dEyes[2] = true;
      dEyes[3] = true;
      dEyes[4] = true;
      dEyes[6] = true;
    } else if (dieValue == 6) {
      dEyes[0] = true;
      dEyes[1] = true;
      dEyes[2] = true;
      dEyes[4] = true;
      dEyes[5] = true;
      dEyes[6] = true;
    }

    // The die
    rectMode(CENTER);
    fill(dieColor);
    stroke(0);
    rect(x, y, size, size);


    // The eyes of the die
    noStroke();
    // Top left eye
    fill(eyeColor, (dEyes[0] ? 255 : 0));
    ellipse (x-size/3, y-size/3, size/5, size/5);
    // Top middle eye
    fill(eyeColor, (dEyes[1] ? 255 : 0));
    ellipse (x, y-size/3, size/5, size/5);
    // Top right eye
    fill(eyeColor, (dEyes[2] ? 255 : 0));
    ellipse (x+size/3, y-size/3, size/5, size/5);
    // Middle eye
    fill(eyeColor, (dEyes[3] ? 255 : 0));
    ellipse (x, y, size/5, size/5);
    // Bottom left eye
    fill(eyeColor, (dEyes[4] ? 255 : 0));
    ellipse (x-size/3, y+size/3, size/5, size/5);
    // Bottom middle eye
    fill(eyeColor, (dEyes[5] ? 255 : 0));
    ellipse (x, y+ size/3, size/5, size/5);
    // Bottom right eye
    fill(eyeColor, (dEyes[6] ? 255 : 0));
    ellipse (x+size/3, y+size/3, size/5, size/5);
  }
}
