//Draws random quotes updated 4 times per second
PFont pFont;  //Check on processing page for how to use PFont
String[] myQuotes = new String[10];
String quoteToDraw;

void setup() {
  size(700,700); //Use fullscreen when finished
  frameRate(4);  //Run this slow.....
  pFont= createFont("Avenir", 24);
  textFont(pFont);
  addQuotes();
}


void draw() {
  background(0);

  quoteToDraw = getQuote();
  text(quoteToDraw, 10, 50); //Print the quote on the sreen using pFont
}

//Methods

/**Adds 10 quotes to the varable myQuotes*/
void addQuotes() {
  myQuotes[0]="Carpe diem";
  myQuotes[1]= "Life Huh";
  myQuotes[2]= "Be wise";
  myQuotes[3]= "life is a mystery";
  myQuotes[4]="God works in mysterious ways";
  myQuotes[5]= "BANANAS FOR LIFE";
  myQuotes[6]="BANANA";
  myQuotes[7]="papoi";
  myQuotes[8]= "GO TO SCHOOL, DON'T DO DRUGS, EAT BANANAS";
  myQuotes[9]= "God bless you";

}

/**Selects a random Qoute from myQuotes.*/

String getQuote(){
  return myQuotes [(int)random(myQuotes.length)];
  
}