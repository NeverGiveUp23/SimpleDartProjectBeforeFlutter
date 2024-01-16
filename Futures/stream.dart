Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream){
    sum += value;
  }
  return sum;
}


void main(){
  final stream = Stream<int>.fromIterable([1,2,3,4,5]);

}