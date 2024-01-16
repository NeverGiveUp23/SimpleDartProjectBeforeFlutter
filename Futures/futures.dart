

Future<String> fetchUserOrder() => Future.delayed(Duration(seconds: 2),
() => "Latte"
);


void main() async {
  print('Program Started');
  try {
    final order = await fetchUserOrder();
  print(order);
  } catch (e){
    print(e);
  } finally {
    print("Done");
  }
}


