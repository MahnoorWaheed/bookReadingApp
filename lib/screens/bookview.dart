import 'package:bookapp/models/usermodel.dart';
import 'package:bookapp/utils/uils.dart';
import 'package:bookapp/widgets/bookviewwidgets/listofchap.dart';
import 'package:bookapp/widgets/bookviewwidgets/readbookdetails.dart';
import 'package:bookapp/widgets/widgetshome/bookcover.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
         BookReadDetails(),
              Positioned(
                top: 165,
                left: 165,
                child: Container(
                           height: 60,
                           width: 35,
                           child: Center(
                             child: FaIcon(FontAwesomeIcons.star)),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.white,
                           ),
                         ),
              ),
              Positioned(
                top: 280,
                left: 20,
                child: ListOfChap(),
              ),
      ],),

    );
  }
}
