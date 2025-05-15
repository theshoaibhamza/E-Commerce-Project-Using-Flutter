// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_final_fields, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ytapp2/Pages/LoginPage.dart';
import 'package:ytapp2/Widgets/BoldText.dart';
import 'package:ytapp2/Widgets/LightText.dart';
import 'package:ytapp2/Widgets/ResponsiveButton.dart';

import '../Widgets/Forms.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool val = false;
  TextEditingController _username = TextEditingController();

  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/shape8.png"),
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
                        icon: Icons.person_outlined,
                        hintText: "Username",
                        obsecure: false,
                        controller: _username),
                    SizedBox(
                      height: 15,
                    ),
                    MyForm(
                        icon: Icons.lock_outline,
                        hintText: "Password",
                        obsecure: true,
                        controller: _password),
                    SizedBox(
                      height: 15,
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
                        icon: Icons.local_phone_outlined,
                        hintText: "Phone",
                        obsecure: false,
                        controller: _phone),
                    SizedBox(
                      height: 15,
                    ),
                    ResponsiveButton(
                      height: 55,
                      width: 370,
                      textSize: 20,
                      textColor: Colors.black,
                      onTap: "login",
                      text: "Create",
                      color: Colors.yellow.shade700,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LightText(
                          text: "Already have an account? ",
                          size: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => LoginPage()));
                          },
                          child: BoldText(
                            text: "Login",
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
            Container(child: Image.asset("assets/images/shape9.png")),
          ],
        ),
      ),
    );
  }
}
