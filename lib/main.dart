// import 'package:appstore/modules/home/view/main_home.dart';
import 'package:appstore/modules/home/view/product_details.dart';
// import 'package:appstore/modules/home/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
      home:  ProductDetails(),
    );
  }
}
