class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  String greet(String who) => "Hello, $who. I am $name";
}
