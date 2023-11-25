import 'package:flutter/material.dart';
import 'package:my_lafyu_ecommerce/features/navigation_bar/navigation_bar.dart';
import 'package:my_lafyu_ecommerce/features/splash/splash_screen.dart';
import 'features/login/persentation/view/login_view.dart';

void main() {
  runApp(
      MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
