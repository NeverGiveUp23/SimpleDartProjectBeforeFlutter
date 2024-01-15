import './Person.dart';
import 'Person.dart';

class Imposter implements Person {
  String get name => '';
  int get age => 0;

  String greet(String who) => 'Hi $who. Do you know who I am?';

  String greetBob(Person person) => person.greet("Felix");

}

void main() {
  final imposter = Imposter();
  print(imposter.greet("Felix"));
  print(imposter.greetBob(Person("Felix", 20)));
}