
import 'package:bookapp/models/usermodel.dart';
import 'package:bookapp/widgets/widgetshome/bookcover.dart';
import 'package:bookapp/widgets/widgetshome/bookinformation.dart';
import 'package:flutter/material.dart';

class ReadingSection extends StatefulWidget {
  ReadingSection({
    Key? key,
    required this.books,
  }) : super(key: key);

  final List<Book> books;

  @override
  State<ReadingSection> createState() => _ReadingSectionState();
}

class _ReadingSectionState extends State<ReadingSection> {
  bool isShowingCover = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "What are you\nReading Today?",
            style: TextStyle(fontSize: 25),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 25),
            scrollDirection: Axis.horizontal,
            children: widget.books.map((book) {
              return Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      BookInformation(
                        book: book,
                        onShowingDetails: (bool isShowingDetails) {
                          print("I AM RUNNING HERE");
                          setState(() {
                            isShowingCover = !isShowingDetails;
                          });
                        },
                      ),
                      isShowingCover == true
                          ? Positioned(
                            top: -20,
                            left: 80,
                            child: BookCover(
                              bookCover: book.bookCover),
                          )
                          : SizedBox(),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
