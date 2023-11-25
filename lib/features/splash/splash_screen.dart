import 'package:flutter/material.dart';
import 'package:my_lafyu_ecommerce/features/login/persentation/view/login_view.dart';

import '../../core/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
          builder: (context) {
            return LoginView();
          },
        ), (route) => false);
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.blue,
      body: Center(
        child: Image.asset(
          'assets/login_image/single icon White.png',
          width: 72,
          height: 72,
        ),
      ),
    );
  }
}
