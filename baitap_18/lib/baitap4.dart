import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTap4 extends StatelessWidget {
  const BaiTap4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(28, 66, 85, 1),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Find products easier here",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Color.fromRGBO(232, 141, 65, 1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(74, 158, 182, 1),
                    ),
                    child: Icon(
                      FontAwesomeIcons.images,
                      color: Colors.white,
                      size: 44,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Text(
                        "Lamp",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(74, 158, 182, 1),
                    ),
                    child: Icon(
                      FontAwesomeIcons.images,
                      color: Colors.white,
                      size: 44,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Text(
                        "Car",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(74, 158, 182, 1),
                    ),
                    child: Icon(
                      FontAwesomeIcons.images,
                      color: Colors.white,
                      size: 44,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Text(
                        "Plant",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
