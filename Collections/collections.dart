import 'dart:ffi';
import 'dart:math';

final List<String> cities = ['New York', "Paris", "Bronx"];
final states = <String>["Manhattan", "Rice"];

final countries = {
  'Italy',
  "UK",
  "Russia"
};

final countries2 = {
  'Hab',
  "USA",
  "Paris"
};

Map<String, dynamic>map = {
  "Key1": "Value1",
  "Key2": "Value2"
};

const pizzaPrices = <String, dynamic>{
  'pepperoni': 8.99,
  'extra cheese': 4.99,
  'regular': 5.99
};

const order = ['pepperoni', 'regular'];


const extraColors = [
  'red',
  'blue'
];

final colors = [
  'green',
  'yellow',
  ...extraColors
];

void main(){

  cities[1] = "Special Place";
  cities.add("Florida");

  cities.insert(3,"Replacement");

  final random = Random();
  final rnl = random.nextInt(cities.length);
  print(cities[rnl]);


  for (var city in cities){
    print(city);
  }

  print("---------------");

  var values = [1, 3, 6, 8 , 9];
  var sum = 0;

  for( var value in values){
    sum += value;
    print(sum);
  }

  print("---------------");
  countries.add("US");

  print(countries.elementAt(2));

  print(countries.union(countries2));



  print(map["Key1"]);

  for (var item in map.keys){
    print(map[item]);
  }

  for (var entry in map.entries){
    print("${entry.key}: ${entry.value}");
  }

  var total = 0.0;

  for(var item in order){
    final price = pizzaPrices[item];

    if(price != null){
      total += price;
    } else {
      print("$item pizza not found");
    }
  }

  print(total);

  print(colors);


}