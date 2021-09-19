class DiceCup {
  // A counter for placing dices in the cup.
  int amountOfDices = 0;

  // Array cup for total dices
  Die[] cup = new Die[20];

  // Method that takes object from the Die Class, and adds it to the cup.
  // Uses the counter amountOfDices to see which spot in the array where the die should be added.
  void addDie(Die die) {
    // Adds a die to the cup
    if (amountOfDices < cup.length) {
      cup[amountOfDices] = die;
      amountOfDices = amountOfDices + 1;
    }
  }

  // Method that rolls all the dices in the cup from the Die Class.
  void shake() {

    // Making sure it only loops through the array equal to the amount of dices that has been added, using a for-loop
    for (int i = 0; i < cup.length-(cup.length-amountOfDices); i++) {
      cup[i].roll();
    }
  }

  void drawDices(int x, int y, int dieSize) {
    // Setting the background so I can roll 4 new dices with keyPressed 'ENTER'.
    background(bg);
    // We want to put our dices into columns using a counter.
    int[] count = {-1, -1, -1, -1, -1, -1} ;
    for (int i = 0; i < cup.length-(cup.length - amountOfDices); i++) {
      int thecount = 0;
      if (cup[i].dieValue == 1) {
        y = 100;
        count[0]++;
        thecount = count[0];
      } else if (cup[i].dieValue == 2) {
        y = 225;
        count[1]++;
        thecount = count[1];
      } else if (cup[i].dieValue == 3) {
        y = 350;
        count[2]++;
        thecount = count[2];
      } else if (cup[i].dieValue == 4) {
        y = 475;
        count[3]++;
        thecount = count[3];
      } else if (cup[i].dieValue == 5) {
        y = 600;
        count[4]++;
        thecount = count[4];
      } else if (cup[i].dieValue == 6) {
        y = 725;
        count[5]++;
        thecount = count[5];
      }
      cup[i].drawDie((x + 150 * thecount), y, dieSize);
    }
  }
}
