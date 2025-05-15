// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, sort_child_properties_last, unused_import, unnecessary_import, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_local_variable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ytapp2/Widgets/IconWithText.dart';

class MyForm extends StatelessWidget {
  MyForm(
      {required this.hintText,
      required this.obsecure,
      super.key,
      required this.icon,
      required this.controller});
  TextEditingController controller;
  String hintText;
  bool obsecure;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(
          label: IconWithText(
              icon: icon, sizeIcon: 20, sizeText: 15, text: hintText),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
    );
  }
}
