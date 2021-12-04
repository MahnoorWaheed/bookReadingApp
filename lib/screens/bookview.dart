import 'package:bookapp/models/usermodel.dart';
import 'package:bookapp/screens/bookviewwidgets/listofchap.dart';
import 'package:bookapp/screens/bookviewwidgets/readbookdetails.dart';
import 'package:bookapp/utils/uils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BookView extends StatelessWidget {
  const BookView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final bookchap = ModalRoute.of(context)!.settings.arguments as Chapter;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
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
