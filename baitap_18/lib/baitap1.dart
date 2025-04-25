import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaiTap1 extends StatelessWidget {
  const BaiTap1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: BottomStyle(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.55,
            color: Color.fromRGBO(91, 145, 59, 1),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
          child: Text(
            "Complete your grocery need easily",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(91, 145, 59, 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 5, 10),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Icon(
                FontAwesomeIcons.arrowRight,
                color: Colors.white,
                size: 14,
              ),
              SizedBox(width: 30),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomStyle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 40);

    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 40,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
