import 'package:book_list/model/book.dart';
import 'package:flutter/material.dart';

import 'bookDetailPage.dart';

class BookItem extends StatelessWidget {
  final Book listingBook;
  const BookItem({Key? key, required this.listingBook}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetailPage(listingBook),
              ),
            );
          },
          leading: Image.asset(
            "assets/images/${listingBook.smallImage}",
            width: 75,
            height: 100,
          ),
          title: Text(listingBook.bookName, style: myTextStyle.headline6),
          subtitle: Text(listingBook.bookAuthor, style: myTextStyle.subtitle1),
          //arrow forward
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.tealAccent.shade400,
            size: 25,
          ),
        ),
      ),
    );
  }
}
