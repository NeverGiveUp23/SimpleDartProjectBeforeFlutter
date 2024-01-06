import 'dart:convert';

import 'package:google_books_api/google_books_api.dart';
import 'package:http/http.dart' as http;



// final List<Book> books = GoogleBooksApi().searchBooks(
// 'Harry Potter',
// maxResults: 1,
// printType: PrintType.books,
// orderBy: OrderBy.relevance,
// );
const baseUrl = 'https://www.googleapis.com/books/v1/volumes';

Future<void> searchBook() async {
  final url = Uri.parse("$baseUrl?q=The Lord of the Rings");
  final res = await http.get(url);

  if(res.statusCode == 200){
    final jsonData = jsonDecode(res.body);
    final items = jsonData['items'] as List;

    for(final item in items){
      print(item["volumeInfo"]['title']);
    }
  } else {
    print("Error fetching books");
  }
}

void main() async {
await searchBook();

}