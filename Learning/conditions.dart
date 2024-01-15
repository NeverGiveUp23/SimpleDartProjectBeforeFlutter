

bool isAllowed = false;

void main() {

  if(!isAllowed) {
    int age = 20;

    if(age != 20){
      print("Sorry youre to young!");
    } else {
      print("Congrats, youre of age");
    }
  }

  do {
    print("Hello");
  } while(isAllowed);


  switch(isAllowed) {
    case true:
      print("Youre allowed");
      break;
    case false:
      print("Youre not allowed");
      break;
    default:
      print("Youre not allowed");
  }





  String value = isAllowed == false ? "False" : "True";

  print(value);
}