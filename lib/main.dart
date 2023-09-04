import 'package:flutter/material.dart';
import 'package:makbulsearchapp/page/products_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          cardTheme: const CardTheme(color: Colors.white),
          appBarTheme: const AppBarTheme(
            color: Colors.teal,
            elevation: 0,
          )),
      home: const ProductPageView(),
    );
  }
}
