import 'package:book_list/book_item.dart';
import 'package:book_list/data/listData.dart';
import 'package:flutter/material.dart';

import 'model/book.dart';

class BookList extends StatelessWidget {
  late List<Book> allBooks;
  BookList() {
    allBooks = prepareData();
    print(allBooks);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: allBooks.length,
            itemBuilder: (context, index) {
              return BookItem(listingBook: allBooks[index]);
            }),
      ),
    );
  }

  List<Book> prepareData() {
    List<Book> tentativeBooks = [];
    for (int i = 0; i < 10; i++) {
      tentativeBooks.add(Book(
        Strings.Books_Name[i],
        Strings.Books_Authors[i],
        Strings.Books_Detail[i],
        Strings.Small_Images[i],
        Strings.Big_Images[i],
      ));
    }
    return tentativeBooks;
  }
}
