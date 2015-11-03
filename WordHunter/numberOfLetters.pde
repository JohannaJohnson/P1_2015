/**Counts the number of letters ot type c in the text, case sensitive*/
int numberOfLetters(char c){
  int number = 0; 
  for(int i = 0; i<oneString.length();i++){
    char c2 = oneString.charAt(i);
    if(c2 == c){
      number = number + 1;
    }
  }
  
  return number;
}