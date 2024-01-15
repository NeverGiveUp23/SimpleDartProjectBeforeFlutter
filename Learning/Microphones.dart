import 'dart:io';

class Microphones {
  final String name;
  final String type;



  Microphones({
    required this.name,
    required this.type
});

  String get getName => name;
  String get getType => type;


  bool turnOn() => true;

  void turnOff() => print("$name is turned off!");

  int volumeLevel(number) => number;

  String toString() => "Name: $name, Type: $type";
}


void main() {
  final mic = Microphones(name: "Blue Yeti", type: "USB");

  mic.turnOn();

  switch(mic.turnOn()) {
    case true:
      print("Enter volume level: ");
      int micLevel = mic.volumeLevel(88);

      if(micLevel < 0 || micLevel > 100){
        print("Volume level must be between 0 and 100");
      } else {
        print("You're volume level is set to $micLevel");
      }
      break;
    case false:
      print("Mic is off");
  }

  print(mic);
}