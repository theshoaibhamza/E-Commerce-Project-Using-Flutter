// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_final_fields, must_be_immutable, sized_box_for_whitespace, sort_child_properties_last, non_constant_identifier_names, prefer_interpolation_to_compose_strings, unused_import, curly_braces_in_flow_control_structures, unnecessary_new

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ytapp2/Models/Product.dart';
import 'package:ytapp2/Pages/BestSeller.dart';
import 'package:ytapp2/Pages/CartPage.dart';
import 'package:ytapp2/Pages/Data.dart';
import 'package:ytapp2/Widgets/BoldText.dart';
import 'package:ytapp2/Widgets/LightText.dart';

class Bestsellerdetailpage extends StatefulWidget {
  Bestsellerdetailpage(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.Category,
      required this.Desc,
      required this.Price,
      required this.initialPrice,
      required this.Quantity,
      required this.iconPath});

  String title;
  String imagePath;
  String iconPath;
  String Category;
  double Price;
  double initialPrice;
  String Desc;
  int Quantity;

  @override
  State<Bestsellerdetailpage> createState() => _BestsellerdetailpageState();
}

class _BestsellerdetailpageState extends State<Bestsellerdetailpage> {
  int count = 1;
  bool tick = false;
  bool addToCart = false;

  void Added() {
    setState(() {
      if (addToCart == false) {
        addToCart = true;
      } else {
        addToCart = false;
      }
    });
  }

  void Fav() {
    setState(() {
      if (tick == false) {
        tick = true;
      } else {
        tick = false;
      }
    });
  }

  void Increment() {
    setState(() {
      if (count != 10) count++;
    });
  }

  void Decrement() {
    setState(() {
      if (count != 1) count--;
    });
  }

  void RemoveFromCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Consumer<Data>(
          builder: (context, value, child) => Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/shape3.png"),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 260,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => CartPage()));
                          },
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Fav();
                          },
                          child: Icon(
                            tick
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: tick ? Colors.red : Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 180),
                    child: Column(
                      children: [
                        LightText(
                          size: 15,
                          text: widget.Category,
                          color: Colors.white,
                        ),
                        BoldText(
                          size: 30,
                          text: widget.title,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 185),
                    child: Image.asset(widget.imagePath),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // remove
                        Decrement();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    BoldText(text: count.toString()),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        // add
                        Increment();
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          height: 30,
                          width: 30,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    BoldText(text: widget.Price.toString()),
                    SizedBox(
                      width: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        Added();

                        Product product = Product(
                            initialPrice: widget.initialPrice,
                            Quantity: widget.Quantity,
                            imagePath: widget.imagePath,
                            title: widget.title,
                            Category: widget.Category,
                            Desc: widget.Desc,
                            Price: widget.Price,
                            iconPath: widget.iconPath);

                        value.AddtoCart(product);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                        height: 50,
                        width: 200,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: addToCart
                                ? Row(
                                    children: [
                                      BoldText(
                                        text: "Added",
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        size: 26,
                                        Icons.done,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                : Row(
                                    children: [
                                      Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      BoldText(
                                        text: "Add",
                                        color: Colors.white,
                                      )
                                    ],
                                  )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: BoldText(
                  text: "Related Products",
                  color: Colors.black,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              BestSeller(),
            ],
          ),
        )),
      ),
    );
  }
}
