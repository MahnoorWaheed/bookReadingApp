import 'package:bookapp/models/usermodel.dart';
import 'package:bookapp/utils/uils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListOfChap extends StatelessWidget {
   ListOfChap({
    Key? key,
     required this.chapdetails,
  }) : super(key: key);

final List<Chapter> chapdetails;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chapdetails.length,
            itemBuilder: (ctx,index){
              return Container(
              height: 100,
              width: screenWidth(context) * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
            color: Colors.black26,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(chapdetails.first.title),
                        Text(chapdetails.first.description),
                      ],
                    ),
                    FaIcon(FontAwesomeIcons.arrowRight)
                  ],
                ),
            );
            },
            
          ),
        ),
      ],
    );
  }
}

