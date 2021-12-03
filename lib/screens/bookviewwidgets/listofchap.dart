import 'package:bookapp/utils/uils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListOfChap extends StatelessWidget {
  const ListOfChap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                Text("chapter1: title of book"),
                Text("description of book")
              ],
            ),
            FaIcon(FontAwesomeIcons.squareFull)
          ],
        ),
    );
  }
}

