// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_final_fields, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ytapp2/Pages/SignUpPage.dart';
import 'package:ytapp2/Widgets/BoldText.dart';
import 'package:ytapp2/Widgets/Forms.dart';
import 'package:ytapp2/Widgets/LightText.dart';
import 'package:ytapp2/Widgets/ResponsiveButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool val = false;
  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/shape7.png"),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                child: Column(
                  children: [
                    BoldText(text: "Welcome Back!"),
                    SizedBox(
                      height: 20,
                    ),
                    MyForm(
                        icon: Icons.email_outlined,
                        hintText: "Email",
                        obsecure: false,
                        controller: _email),
                    SizedBox(
                      height: 15,
                    ),
                    MyForm(
                        icon: Icons.lock_outline,
                        hintText: "Password",
                        obsecure: true,
                        controller: _password),
                    Transform.translate(
                      offset: Offset(-15, 0),
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.yellow.shade600,
                            checkColor: Colors.black,
                            value: val,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            side: BorderSide(
                              color: Colors.orange,
                              width: 1,
                            ),
                            onChanged: (value) {
                              setState(() {
                                val = !val;
                              });
                            },
                          ),
                          BoldText(
                            text: "Remember me",
                            color: Colors.yellow.shade800,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    ResponsiveButton(
                      height: 55,
                      width: 370,
                      textSize: 20,
                      textColor: Colors.black,
                      onTap: "home",
                      text: "Login",
                      color: Colors.yellow.shade700,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LightText(
                          text: "Don't have an account? ",
                          size: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => SignUpPage()));
                          },
                          child: BoldText(
                            text: "Sign up",
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    //Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 72,
            ),
            Container(child: Image.asset("assets/images/shape6.png")),
          ],
        ),
      ),
    );
  }
}
