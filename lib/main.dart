import 'package:ecommerceexam/splashPage.dart';
import 'package:ecommerceexam/totalPage.dart';
import 'package:flutter/material.dart';

import 'cartPage.dart';
import 'detailPage.dart';
import 'homePage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {

        '/':(context)=> const splashPage(),
        '/home':(context)=> const homePage(),
        '/detail':(context)=> const detailPage(),
        '/cart':(context)=> const cartPage(),
        '/total':(context)=> const totalPage(),

      },
    );
  }
}