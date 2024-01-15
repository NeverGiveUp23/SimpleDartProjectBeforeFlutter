import 'dart:io';
import 'dart:math';

enum Move {rock, paper, scissors}

void main(){
  final rng = Random();

  while(true) {
    stdout.write("Hello, Rock Paper Scissors? (r/p/s) , q to quit: ");
    final input = stdin.readLineSync();
    var playerMove;

    switch(input){
      case "r":
        playerMove = Move.rock;
        print("You chose Rock");
        break;
      case "p":
        playerMove = Move.paper;
        print("You chose Paper");
        break;
      case "s":
        playerMove = Move.scissors;
        print("You chose Scissors");
        break;
      case "q":
        exit(0);
        break;
      default:
        print("Invalid input");
    }
    final random = rng.nextInt(3);
    final aiMove = Move.values[random];

    if(playerMove == aiMove){
      print("It's a draw");
    } else if (playerMove == Move.paper && aiMove == Move.rock ||
                playerMove == Move.rock && aiMove == Move.scissors ||
                playerMove == Move.scissors && aiMove == Move.paper
    ){
      print("You Win!");
      print("The ai choose $aiMove");
    } else {
      print("You lose");
      print("The ai choose ${aiMove}");
    }
  }





}