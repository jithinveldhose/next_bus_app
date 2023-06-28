import 'package:flutter/material.dart';

import 'otp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.1,
              ),
              Image.asset(
                'assets/images/loginbanner.png',
                width: screenSize.width * 0.9,
              ),
              SizedBox(height: screenSize.height * 0.07),
              Container(
                height: screenSize.height * 0.05,
                margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.15),
                child:const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter Mobile No',
                    labelStyle: TextStyle(
                      color: Color(0xFFFA0A0A0),
                      fontWeight: FontWeight.w500,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFEB4335),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFEB4335),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              SizedBox(
                height: screenSize.height * 0.05,
                width: screenSize.width * 0.7,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OtpScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF5F1F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.04,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: screenSize.width * 0.2,
                        right: screenSize.width * 0.03,
                      ),
                      child: Divider(
                        color: Color(0xFFFFFAF8F),
                        height: 10,
                      ),
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(color: Color(0xFFFEB4335)),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: screenSize.width * 0.03,
                        right: screenSize.width * 0.2,
                      ),
                      child: Divider(
                        color: Color(0xFFFFFAF8F),
                        height: 10,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'sign up With Google',
                  style: TextStyle(
                    fontSize: screenSize.height * 0.02,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFF000000),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              CircleAvatar(
                radius: screenSize.height * 0.015,
                backgroundImage: AssetImage('assets/images/googlelogo.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}