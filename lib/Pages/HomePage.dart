// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_final_fields, must_be_immutable, sized_box_for_whitespace, sort_child_properties_last, non_constant_identifier_names, prefer_interpolation_to_compose_strings, unused_import, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ytapp2/Models/Product.dart';
import 'package:ytapp2/Pages/BestSeller.dart';
import 'package:ytapp2/Pages/Data.dart';
import 'package:ytapp2/Pages/ForYou.dart';

import 'package:ytapp2/Widgets/BoldText.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Consumer<Data>(
        builder: (context, value, child) => Column(
          children: [
            Stack(children: [
              Image.asset("assets/images/shape1.png"),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        BoldText(
                          text: "Islamabad, Pakistan",
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/unnamed.jpg")),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BoldText(
                            text: "Hello",
                            color: Colors.white,
                          ),
                          // here username

                          BoldText(
                            text: "Shoaib Hamza",
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 230,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: "Search...",
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    GestureDetector(
                                        onTap: () {}, child: Icon(Icons.search))
                                  ],
                                ),
                                height: 50,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        scale: 20,
                                        image: AssetImage(
                                            "assets/icons/settings.png")),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 110,
                            width: double.maxFinite,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: value.ProductList.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              height: 60,
                                              width: 60,
                                              child: Image.asset(value
                                                  .ProductList[index]
                                                  .iconPath)),
                                        ),
                                        BoldText(
                                            text: value
                                                .ProductList[index].Category)
                                      ],
                                    ),
                                    margin: EdgeInsets.only(right: 10),
                                    height: 110,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Best Sellers",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  shadows: [
                                    BoxShadow(offset: Offset(0.8, 0.5))
                                  ]),
                            ),
                          ),

                          BestSeller(),

                          SizedBox(
                            height: 30,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "For You",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  shadows: [
                                    BoxShadow(offset: Offset(0.8, 0.5))
                                  ]),
                            ),
                          ),

                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          Foryou()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ],
        ),
      )),
    );
  }
}
