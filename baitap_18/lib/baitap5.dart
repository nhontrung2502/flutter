import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTap5 extends StatelessWidget {
  const BaiTap5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
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
                      "Welcome back,",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Samantha William",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            FontAwesomeIcons.cartShopping,
                            color: Colors.black,
                            size: 17,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: Container(
                          width: 11,
                          height: 11,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(232, 141, 65, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Text(
                              "2",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 90,
                  height: 40,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          color: Color.fromRGBO(234, 234, 231, 1),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: Color.fromRGBO(206, 206, 204, 1),
                            size: 17,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 40,
                        child: SizedBox(
                          width: 100,
                          child: Text(
                            "Searching Item",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          width: 40,
                          height: 40,
                          color: Color.fromRGBO(232, 141, 65, 1),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            FontAwesomeIcons.sliders,
                            color: Colors.white,
                            size: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                height: 200,
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
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                dot(status: "active"),
                SizedBox(width: 10),
                dot(),
                SizedBox(width: 10),
                dot(),
                SizedBox(width: 10),
                dot(),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                category(FontAwesomeIcons.music, "Music"),
                SizedBox(width: 30),
                category(FontAwesomeIcons.building, "Property"),
                SizedBox(width: 30),
                category(FontAwesomeIcons.gamepad, "Game"),
                SizedBox(width: 30),
                category(FontAwesomeIcons.mobileScreen, "Gadget"),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                category(FontAwesomeIcons.desktop, "Electronic"),
                SizedBox(width: 30),
                category(FontAwesomeIcons.scissors, "Property"),
                SizedBox(width: 30),
                category(FontAwesomeIcons.truck, "Game"),
                SizedBox(width: 30),
                category(FontAwesomeIcons.book, "Book"),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Best Seller",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(232, 141, 65, 1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bestSeller("Plant"),
                SizedBox(width: 10),
                bestSeller("Lamp"),
                SizedBox(width: 10),
                bestSeller("Chair"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget dot({String status = "deactive"}) {
  if (status == "active") {
    return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Container(
      width: 8,
      height: 8,
      color: Color.fromRGBO(232, 141, 65, 1),
    ),
  );
  } else {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 8,
        height: 8,
        color: Color.fromRGBO(223, 225, 223, 1),
      ),
    );
  }
}

Widget category(IconData icon, name) {
  return Column(
    children: [
      Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 60,
              height: 60,
              color: Color.fromRGBO(234, 234, 231, 1),
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            child: SizedBox(
              width: 40,
              height: 20,
              child: Icon(
                icon,
                color: Color.fromRGBO(74, 158, 182, 1),
                size: 20,
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 10),
      Text(
        name,
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w500
        ),
      ),
    ],
  );
}

Widget bestSeller(String name) {
  return Stack(
    children: [
      Container(
        width: 115,
        height: 160,
        decoration: BoxDecoration(
          color: Color.fromRGBO(234, 234, 231, 1),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        width: 115,
        height: 115,
        decoration: BoxDecoration(
          
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromRGBO(74, 158, 182, 1),
            ),
            child: Icon(
              FontAwesomeIcons.images,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                ),
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.star,
                    color: Colors.amberAccent[400],
                    size: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.star,
                    color: Colors.amberAccent[400],
                    size: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.star,
                    color: Colors.amberAccent[400],
                    size: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.star,
                    color: Colors.amberAccent[400],
                    size: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.star,
                    color: Colors.amberAccent[400],
                    size: 10,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "0.0",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ]
  );
}