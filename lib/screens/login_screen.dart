import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/default_button.dart';
import 'package:chat_app/widgets/input_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultVerticalPadding,
                    horizontal: kDefaultHorizontalPadding,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      AspectRatio(
                        aspectRatio: 2,
                        child: Image.asset('assets/logo.png'),
                      ),
                      SizedBox(height: kDefaultVerticalPadding * 2),
                      InputTextField(
                        hint: 'Enter your email',
                        isObsecured: false,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: kDefaultVerticalPadding / 2),
                      InputTextField(
                        hint: 'Enter your password',
                        isObsecured: true,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: kDefaultVerticalPadding),
                      DefaultButton(
                        text: 'Login',
                        color: kTextFieldBorderColor,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
