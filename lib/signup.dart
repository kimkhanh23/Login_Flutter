// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final String? title;
  const SignUpPage({super.key, required this.title});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 160),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: const TextField(
                textAlign: TextAlign.start,
                cursorColor: Colors.red,
                cursorRadius: Radius.circular(30),
                cursorWidth: 3,
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person_pin_rounded),
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: const TextField(
                textAlign: TextAlign.start,
                cursorColor: Colors.red,
                cursorRadius: Radius.circular(30),
                cursorWidth: 3,
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    //errorText:_ngSai ? null : 'Bạn chưa điền tên đăng nhập!!!',
                    border: InputBorder.none,
                    labelText: 'E-mail',
                    prefixIcon: Icon(Icons.person_pin_rounded),
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: const TextField(
                textAlign: TextAlign.start,
                cursorColor: Colors.red,
                cursorRadius: Radius.circular(30),
                cursorWidth: 3,
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.person_pin_rounded),
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
