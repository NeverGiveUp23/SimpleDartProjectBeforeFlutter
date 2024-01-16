// Alias -> name to a function type for Reusability
typedef Greet = String Function(String);

String sayHi(String name) => "Hi $name";

String sayBonjour(String name) => "Bonjour $name";

void main(){
  print(sayHi('name'));

  welcome(sayBonjour, "Felix");

}

void welcome(Greet greet, String name){
  print(greet(name));

}