void main(){
  const multi = 10;
  const list = [1,2,3];
  final result = list.map((e) {
    return e * multi;
  });
  print(result);


  list.forEach((element) {
    print(element * 2);
  });

  // Mapping list

  final List<int> doubles = doubleGList(list);
  print(doubles);



}


List<T> doubleGList<T>(List<T> items){
  var result = <T>[];
  for(var x in items){
    result.add(x);
  }

  return result;

}

List<int> doubleList(List<int> items){
  var result = <int>[];

  for(var x in items){
    result.add(x * 2);
  }
  return result;
}