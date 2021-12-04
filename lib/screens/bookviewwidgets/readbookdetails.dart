import 'package:bookapp/utils/uils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookReadDetails extends StatelessWidget {
  const BookReadDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
           height: screenHeight(context)*0.4,
           width:screenWidth(context),
          decoration: const BoxDecoration(
             color: Colors.yellow,
             shape: BoxShape.rectangle,
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(50),
               bottomRight: Radius.circular(50),
             ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text("Book title from Book home screen", 
                   style: GoogleFonts.poppins(fontSize: 20),
                   ),
                   Container(
                     width: 150,
                     child: Text("Book title from Book home screen title from Book home screen", 
                     style: GoogleFonts.poppins(
                       fontSize: 11,color: Colors.grey),
                       maxLines: 3,
                     ),
                   ),
                   Container(
                     height: 25,
                     width: 70,
                     child: Center(child: Text("Read")),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.white,
                     ),

                   )
               ],
              ),
                )),
              Expanded(
                child: Image.asset("assets/images/book.jpg", 
                height: 70,
                ) ,),
            ],
          ),
         );
  }
}