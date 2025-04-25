import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTap3 extends StatelessWidget {
  const BaiTap3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
          ),
          SizedBox(height: 30),
          itemRow("Orange", "\$15"),
          SizedBox(height: 20),
          Divider(height: 1),
          SizedBox(height: 20),
          itemRow("Apple", "\$20"),
          SizedBox(height: 20),
          Divider(height: 1),
          SizedBox(height: 20),
          itemRow("Mango", "\$20"),
          SizedBox(height: 20),
          Divider(height: 1),
          SizedBox(height: 20),
          itemRow("Banana", "\$20"),
          SizedBox(height: 20),
          Divider(height: 1),
          SizedBox(height: 20),
          itemRow("Water Melon", "\$20"),
        ],
      ),
    );
  }
}

Widget itemRow(String name, String price) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 90,
            height: 90,
            color: Color.fromRGBO(91, 145, 59, 1),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "1000 ready stock",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4),
              Text(
                price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Icon(
          FontAwesomeIcons.heart,
          size: 22,
          color: Colors.grey,
        ),
      ],
    ),
  );
}
