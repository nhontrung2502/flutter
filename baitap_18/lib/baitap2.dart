import 'package:flutter/material.dart';

class BaiTap2 extends StatelessWidget {
  const BaiTap2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 247, 1),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Balance",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "\$1,700.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Color.fromRGBO(91, 145, 59, 1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 230,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(91, 145, 59, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 240,
                    child: Text(
                      "Buy Orange 10 Kg Get discount 25%",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ]
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "For You",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 175,
                      child: Container(
                        height: 175,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "./assets/imgs/fruit.png",
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Fruit",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 175,
                      child: Container(
                        height: 175,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "./assets/imgs/vegetable.png",
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Vegetable",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 175,
                      child: Container(
                        height: 175,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "./assets/imgs/cookies.png",
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Cookies",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 175,
                      child: Container(
                        height: 175,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "./assets/imgs/meat.png",
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Meat",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
