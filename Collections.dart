import 'dart:convert';

import 'package:google_books_api/google_books_api.dart';
import 'package:http/http.dart' as http;



// final List<Book> books = GoogleBooksApi().searchBooks(
// 'Harry Potter',
// maxResults: 1,
// printType: PrintType.books,
// orderBy: OrderBy.relevance,
// );


// this is the basic fethcing with the url
const baseUrl = 'https://www.googleapis.com/books/v1/volumes';

Future<void> searchBook() async {
  final url = Uri.parse("$baseUrl?q=A Court of Thorn and Roses");
  final res = await http.get(url);

  if(res.statusCode == 200){
    final jsonData = jsonDecode(res.body);
    final items = jsonData['items'] as List;


    for(final item in items){
      print(item["volumeInfo"]['title']);
      print(item['volumeInfo']['authors']);
      print(item['volumeInfo']['description']);
    }
  } else {
    print("Error fetching books");
  }
}


// this is the fetching with the google_books library

Future<void> searchBooksWLibrary(String query) async {
  final booksApi = GoogleBooksApi();
  final results = await booksApi.searchBooks(
      query
  );

  for( final volume in results){
    print(volume.volumeInfo.imageLinks);
  }
}

void main() async {
print("Loading...");
var bookData = await Future.delayed(Duration(seconds: 5), () =>
    searchBooksWLibrary('A Court of Thorns and Roses')) ;


}