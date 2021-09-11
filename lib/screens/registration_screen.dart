import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/default_button.dart';
import 'package:chat_app/widgets/input_textfield.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
                      text: 'Register',
                      color: kButtonBackgroundColor,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
