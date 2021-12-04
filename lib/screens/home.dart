import 'package:bookapp/models/usermodel.dart';
import 'package:bookapp/screens/widgetshome/bookcover.dart';
import 'package:bookapp/screens/widgetshome/rating.dart';
import 'package:bookapp/screens/widgetshome/readingsection.dart';
import 'package:bookapp/utils/uils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_fonts/google_fonts.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
     final user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      body: Stack(
         children: [
           Container(
               height: 280,
               width: MediaQuery.of(context).size.width *1,
              decoration: const BoxDecoration(
                 color: Colors.yellow,
                 shape: BoxShape.rectangle,
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(50),
                   bottomRight: Radius.circular(50),
                 )
              ),
             ),
           Align(
             alignment: const Alignment(1.5,-1.15),
             child: Container(
               height: 200,
               width: 200,
              decoration:const BoxDecoration(
                 color: Colors.pink,
                 shape: BoxShape.circle,
              ),
             ),
           ),
             Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              Expanded(
                flex: 3,
                child: ReadingSection(books: user.books),
              ),
              Expanded(
                  flex: 2,
                  child: BestOfTheDay(
                    book: getBestOfTheDayBook(user.books),
                    username: user,
                    )),
              Expanded(
                flex: 1,
                child: Container(),
              )
            ],
          ),
         ],
      ),
    );
  }

  Book getBestOfTheDayBook(List<Book> books) {
    List<Book> booksToSort = books.map((e) => e).toList();
    booksToSort.sort((a, b) => b.rating.compareTo(a.rating));

    return booksToSort.first;
  }
}

class BestOfTheDay extends StatelessWidget {
  const BestOfTheDay({
    Key? key,
    required this.book,
    required this.username,
  }) : super(key: key);

  final Book book;
  final User username;

  @override
  Widget build(BuildContext context) {
    return Container(
         width: screenWidth(context)*0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffE6E2E2)
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: -35,
              left: 200,
            child: BookCover(bookCover: book.bookCover, height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book.title),
                Text(book.author),
                SizedBox(
                  height: 70,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Rating(rating: book.rating),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: screenWidth(context)*0.5,
                      child: Text(
                        book.details,
                        maxLines:3,
                        overflow: TextOverflow.ellipsis,
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
        Positioned(
          top: 190,
          left: 270,
          child: Container(
            width: 80,
            height: 35,
                    decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color:Colors.black,
                    ),
                    child: Center(child: Text("Read", style: GoogleFonts.poppins(color:Colors.white)))
                  ),
        )
        ],
      ),
      
      );
  }
}
