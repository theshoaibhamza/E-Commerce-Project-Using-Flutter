// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_final_fields, must_be_immutable, sized_box_for_whitespace, sort_child_properties_last, non_constant_identifier_names, prefer_interpolation_to_compose_strings, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ytapp2/Pages/Data.dart';
import 'package:ytapp2/Widgets/BoldText.dart';

class Foryou extends StatelessWidget {
  Foryou({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: Consumer<Data>(
          builder: (context, value, child) => Container(
            height: 260,
            width: 380,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.ProductListForYou.length,
                itemBuilder: (context, Index) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10, top: 10),
                        height: 240,
                        width: 340,
                        child: Image.asset("assets/images/shape2.png"),
                      ),
                      Container(
                        height: 280,
                        width: 340,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 160,
                                  width: 200,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset(value
                                        .ProductListForYou[Index].imagePath),
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 40),
                                  child: Icon(
                                    size: 40,
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 20),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      BoldText(
                                        size: 16,
                                        text: value
                                            .ProductListForYou[Index].Category,
                                        color: Colors.white,
                                      ),
                                      BoldText(
                                        text: value
                                            .ProductListForYou[Index].title,
                                        size: 22,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  BoldText(
                                    text: value.ProductListForYou[Index].Price
                                        .toString(),
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ));
  }
}
