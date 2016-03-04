String[] lines; // This variable is global
String oneString; //This variable is global
PFont font; //This variable is global and that means....
void setup(){
  size(600,400);
  background(0,0,0);
  fill(255,255,255);
  font = createFont("Arial-Black-48.vlw", 48);
  textFont(font,24);
  text("Challenge 1", 10, 50);
  
  //This is a Array of Strings each row in the Array is one line in the book
  //Check the link, the method loadStrings reads the text into a Array of Strings.
  lines = loadStrings("http://www.clearwhitelight.org/hitch/hhgttg.txt");
  
  //This method adds all the lines to one line and it can be convinent for some off the methods.
  oneString = createOneString();

  //Here is your work, write the methods in the tabs but dont change this line.
  int result = numberOfLetters('a') + numberOfLetters('R') + numberOfWords("or") + numberOfLines();
  //Output
  textFont(font,14);
  text("Enter the correct result on the page below to get insight.", 10, 100);
  text("MyGuess is: "+result, 10, 120);
  text("https://klararest.firebaseapp.com/", 10, 140);
}

void draw(){
   //Not used
}

/**Hleper method that creates one long string with all letters ii can be easier to use perhaps.*/
String createOneString(){
  StringBuilder builder = new StringBuilder();
  for (int i = 0; i < lines.length; i++){
     builder.append(lines[i]);
  }
  String resultString = builder.toString();
  return resultString;
}