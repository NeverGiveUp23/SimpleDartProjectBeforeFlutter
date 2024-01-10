

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



  String value = isAllowed == false ? "False" : "True";

  print(value);
}