import 'dart:math';
import 'dart:io';

void main() {
  int guess;
  Random rand = new Random(); //create a random number generator
  int answer = rand.nextInt(100); //gets a random integer from 0 to 99
  print("---------------------------------------");
  print("-------- Wellcome To The Game ---------");
  print("---------------------------------------");
  print("***************************************");
  print("Now Guess The courrect Number,");
  print("Between (1-100)");
  print("***************************************");
  do {
    print("Enter your guess:");
    //String temp = stdin.readLineSync();  //read in from the keyboard
    guess = int.parse(stdin.readLineSync()!); //convert string to integer
    if (guess < answer) {
      print("Too low! ( ˘︹˘ ) ");
      print("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
    } else if (guess > answer) {
      print("Too high! (ㆆ_ㆆ) ");
      print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    }
  } while (guess != answer);
  print("You got it! ✔♚🍾");
  print("---------------------------------------");
  print("--------      Thank You       ---------");
  print("---------------------------------------");
}