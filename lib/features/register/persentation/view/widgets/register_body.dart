import 'package:flutter/material.dart';
import 'package:my_lafyu_ecommerce/core/constants/colors.dart';
import 'package:my_lafyu_ecommerce/core/utils/widgets/custom_buttons.dart';
import 'package:my_lafyu_ecommerce/core/utils/widgets/custom_text_form_field.dart';
import 'package:my_lafyu_ecommerce/features/login/persentation/view/login_view.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  bool isObscure1 = true;
  bool isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/login_image/logo.png',
                width: widthScreen * 0.25,
                height: heightScreen * 0.25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Let’s Get Started',
                style: TextStyle(
                  color: Color(0xff223263),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Create an new account',
                style: TextStyle(
                  color: Color(0xff9098B1),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ),
            CustomTextField(
              labelText: 'Full Name',
              isObscure: false,
              prefixIcon: Icons.person_outline,
            ),
            CustomTextField(
              labelText: 'Your Email',
              isObscure: false,
              prefixIcon: Icons.email_outlined,
            ),
            CustomTextField(
              labelText: 'Password',
              isObscure: isObscure1,
              prefixIcon: Icons.lock_outline,
              suffixIcon: IconButton(
                icon: (isObscure1 == true)
                    ? Icon(Icons.visibility_off_outlined)
                    : Icon(Icons.visibility_outlined),
                onPressed: () {
                  setState(
                    () {
                      isObscure1 = !isObscure1;
                    },
                  );
                },
              ),
            ),
            CustomTextField(
              labelText: 'Password Again',
              isObscure: isObscure2,
              prefixIcon: Icons.lock_outline,
              suffixIcon: IconButton(
                icon: (isObscure2 == true)
                    ? Icon(Icons.visibility_off_outlined)
                    : Icon(Icons.visibility_outlined),
                onPressed: () {
                  setState(
                    () {
                      isObscure2 = !isObscure2;
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: CustomButtons(
                text: 'Sign Up',
                borderRadius: 30,
                buttonWidth: 300,
                buttonHeight: 50,
                color: ColorsUtils.blue,
                onPressed: () {
                  Navigator.of(context).pop(
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginView();
                      },
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' have an account?',
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginView();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: ColorsUtils.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
