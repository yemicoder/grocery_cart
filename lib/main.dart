import 'package:flutter/material.dart';
import 'package:grocery/models/cart_models.dart';
import 'package:provider/provider.dart';

import 'intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CartModel(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroPage(),
    ),);
  }
}

