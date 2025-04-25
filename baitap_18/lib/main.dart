import 'package:flutter/material.dart';
// import 'package:baitap_18/baitap1.dart';
// import 'package:baitap_18/baitap2.dart';
// import 'package:baitap_18/baitap3.dart';
// import 'package:baitap_18/baitap4.dart';
import 'package:baitap_18/baitap5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // child: BaiTap1(),
          // child: BaiTap2(),
          // child: BaiTap3(),
          // child: BaiTap4(),
          child: BaiTap5(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}