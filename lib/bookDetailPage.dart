import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model/book.dart';

class BookDetailPage extends StatefulWidget {
  final Book listingBook;
  const BookDetailPage(this.listingBook, {Key? key}) : super(key: key);

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  Color appBarColor = Colors.blueGrey;
  late PaletteGenerator paletteGenerator;

  @override
  void initState() {
    super.initState();
    findAppBarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            backgroundColor: appBarColor,
            pinned: true,
            title: Text(widget.listingBook.bookName),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/${widget.listingBook.largeImage}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(widget.listingBook.bookDetail,
                  style: Theme.of(context).textTheme.subtitle1),
            ),
          ),
        ],
      ),
    );
  }

  void findAppBarColor() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
        AssetImage("assets/images/${widget.listingBook.largeImage}"));
    appBarColor = paletteGenerator.dominantColor!.color;
    setState(() {});
  }
}
