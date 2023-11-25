import 'package:flutter/material.dart';
import 'package:my_lafyu_ecommerce/features/home/persentation/view/home_view.dart';
import 'package:my_lafyu_ecommerce/features/register/persentation/view/register_view.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/utils/widgets/custom_buttons.dart';
import '../../../../../core/utils/widgets/custom_icon.dart';
import '../../../../../core/utils/widgets/custom_text_buttons.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';

class LoginBody extends StatefulWidget {
  LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isObscure = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/login_image/logo.png',
                  width: widthScreen * 0.25,
                  height: heightScreen * 0.25,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome to Lafyuu',
                    style: TextStyle(
                      color: Color(0xff223263),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign in to continue',
                    style: TextStyle(
                      color: Color(0xff9098B1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                CustomTextField(
                  labelText: 'Your Email',
                  prefixIcon: Icons.email_outlined,
                  isObscure: false,
                ),
                CustomTextField(
                  labelText: 'password',
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: IconButton(
                    icon: (isObscure == true)
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility_outlined),
                    onPressed: () {
                      setState(
                        () {
                          isObscure = !isObscure;
                        },
                      );
                    },
                  ),
                  isObscure: isObscure,
                ),
                CustomButtons(
                  text: 'Sign In',
                  borderRadius: 30,
                  buttonWidth: 300,
                  buttonHeight: 50,
                  color: ColorsUtils.blue,
                  onPressed: (){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
                      return HomeView();
                    }), (route) => false);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: widthScreen * 0.4,
                        child: Divider(
                          color: Color(0xff9098B1),
                          thickness: 1.5,
                          indent: widthScreen * 0.07,
                        ),
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          color: Color(0xff9098B1),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: widthScreen * 0.4,
                        child: Divider(
                          color: Color(0xff9098B1),
                          thickness: 1.5,
                          endIndent: widthScreen * 0.07,
                        ),
                      ),
                    ],
                  ),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/login_image/Google.png',
                      width: 24, height: 24),
                  label: Text('Login With Google'),
                ),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook_outlined,
                    weight: 24,
                  ),
                  label: Text('Login with facebook'),
                ),
                CustomTextButton(
                  text: 'Forgot password ?',
                  onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return RegisterView();
                            },
                          ),
                        );
                      },
                      child: Text(
                        ' Register',
                        style: TextStyle(
                            color: ColorsUtils.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
