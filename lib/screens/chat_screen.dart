// ignore_for_file: file_names

import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kTextFieldBorderColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
          splashRadius: 20,
          onPressed: () {},
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              width: ScreenUtil().setWidth(30),
              height: ScreenUtil().setHeight(30),
            ),
            SizedBox(width: kDefaultHorizontalPadding / 2),
            Text(
              'Chat',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: kDefaultHorizontalPadding),
            child: IconButton(
              icon: const Icon(
                Icons.close_rounded,
                color: Colors.white,
              ),
              splashRadius: 20,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: kTextFieldBorderColor,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: kDefaultHorizontalPadding),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Type your message here...',
                      hintStyle: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: kButtonBackgroundColor,
                      fontSize: 18.sp,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
