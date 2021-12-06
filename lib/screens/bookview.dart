import 'package:bookapp/models/usermodel.dart';
import 'package:bookapp/utils/uils.dart';
import 'package:bookapp/widgets/bookviewwidgets/listofchap.dart';
import 'package:bookapp/widgets/bookviewwidgets/readbookdetails.dart';
import 'package:bookapp/widgets/widgetshome/bookcover.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BookView extends StatelessWidget {
  const BookView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    final bookViewvar= ModalRoute.of(context)!.settings.arguments as Book;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)
            ),
            child: BookCover(bookCover: bookViewvar.bookCover, 
            fit: BoxFit.cover,
            width: screenWidth(context),
            height: screenHeight(context)*0.42,
            ),
          ),
        BookReadDetails(allChapDesc: bookViewvar),
        Padding(
          padding: const EdgeInsets.only(top:260, left:18),
          child: Container(
            child: ListOfChap(chapdetails: bookViewvar.chapters),),
        ),
      ],
      ),
    );
  }
}
