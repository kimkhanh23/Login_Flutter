import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart'; //hien ban phim full Number
import 'package:manhinhdangnhap/signup.dart';
import 'package:manhinhdangnhap/home.dart';
import 'package:manhinhdangnhap/passforgotten.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _passController = TextEditingController();
  bool _passInvalid = true;
  final _userController = TextEditingController();
  bool _userInvalid = true;
  bool _obscurePassword = true;
  String userName = "PDA";
  String passWord = "123";

  void loginState() {
    if (_userController.text.isEmpty) {
      _userInvalid = false;
    } else {
      _userInvalid = true;
    }
    if (_passController.text.isEmpty) {
      _passInvalid = false;
    } else {
      _passInvalid = true;
    }
    if (!_userInvalid || !_passInvalid) {
      _showDialog();
    }
    if (_userController.text == userName && _passController.text == passWord) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
    if (_userController.text != userName || _passController.text != passWord) {
      _errorInfor();
    }
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              title: const Text('ERROR!!!'),
              content: const Text('Ban chua dien thong tin'),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                )
              ]);
        });
  }

  void _errorInfor() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              title: const Text('WARNING!!!'),
              content: const Text('Tài Khoản Này Không Có Thực'),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                )
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 100, 30, 0),
          //padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          color: Colors.black,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Login Account',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 23),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
              const Text(
                'Welcome Back Flutter',
                style: TextStyle(color: Colors.blue),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                    //nen bo tron cho cai LOGO
                    width: 90,
                    height: 90,
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        //shape: BoxShape.circle,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(
                            width: 3,
                            color: Colors.green,
                            style: BorderStyle.solid),
                        color: Colors.black),
                    child: const FlutterLogo()),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: _userController,
                  cursorColor: Colors.red,
                  cursorRadius: const Radius.circular(30),
                  cursorWidth: 3,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                      //errorText:_ngSai ? null : 'Bạn chưa điền tên đăng nhập!!!',
                      border: InputBorder.none,
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person_pin_rounded),
                      labelStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: TextField(
                  keyboardType: TextInputType.number,
                  //inputFormatters: <TextInputFormatter>[
                  //FilteringTextInputFormatter.digitsOnly
                  //],
                  cursorColor: Colors.red,
                  cursorRadius: const Radius.circular(30),
                  cursorWidth: 3,
                  controller: _passController,
                  obscureText: _obscurePassword,
                  style: const TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    // errorText: _mkSai ? null : 'Bạn chưa điền mật khẩu!!!',
                    border: InputBorder.none,
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock_rounded),
                    labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(_obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
                  onPressed: () {
                    loginState();
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const Text('Sign up')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForGotPass()));
                      },
                      child: const Text('Forget password?')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
