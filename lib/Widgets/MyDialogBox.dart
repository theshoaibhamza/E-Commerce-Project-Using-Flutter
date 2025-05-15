// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, avoid_unnecessary_containers, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ytapp2/Pages/Data.dart';
import 'package:ytapp2/Widgets/BoldText.dart';
import 'package:ytapp2/Widgets/Forms.dart';

class MyDialogBox {
  MyShowDialog(String title, String content, String Contentfont,
      BuildContext context, TextEditingController _controller) {
    showDialog(
        context: context,
        builder: ((context) {
          return Consumer<Data>(
              builder: (context, value, child) => AlertDialog(
                    title: BoldText(text: title),
                    content: Container(
                      height: 100,
                      width: 200,
                      child: Column(
                        children: [
                          MyForm(
                              icon: Icons.discount_outlined,
                              hintText: "Ex, 12345",
                              obsecure: false,
                              controller: _controller),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            if (value.getCons() ==
                                _controller.text.toString()) {
                              // update price

                              value.setTracker();
                            }

                            Navigator.pop(context);
                          },
                          child: BoldText(
                              text: value.tracker
                                  ? "Remove Coupon"
                                  : "Apply Coupon"))
                    ],
                  ));
        }));
  }
}
