import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    required this.hint,
    required this.isObsecured,
    required this.onChanged,
    this.controller,
  }) : super(key: key);
  final String hint;
  final bool isObsecured;
  final Function(String) onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
      decoration: BoxDecoration(
        border: Border.all(
          color: kTextFieldBorderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        obscureText: isObsecured,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey[350],
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
