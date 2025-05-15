// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_final_fields, must_be_immutable, sized_box_for_whitespace, sort_child_properties_last, non_constant_identifier_names, prefer_interpolation_to_compose_strings, unused_import, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ytapp2/Models/Product.dart';
import 'package:ytapp2/Pages/BestSellerDetailPage.dart';
import 'package:ytapp2/Pages/Data.dart';
import 'package:ytapp2/Widgets/BoldText.dart';
import 'package:ytapp2/Widgets/LightText.dart';
import 'package:ytapp2/Widgets/MyDialogBox.dart';
import 'package:ytapp2/Widgets/ResponsiveButton.dart';

class CartPage extends StatefulWidget {
  CartPage({
    super.key,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  TextEditingController _controller = TextEditingController();

  // int count = 1;
  // void Increment() {
  //   setState(() {
  //     if (count != 10) count++;
  //   });
  // }

  // void Decrement() {
  //   setState(() {
  //     if (count != 1) count--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Consumer<Data>(
        builder: (context, value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: BoldText(
                text: "Cart",
                size: 40,
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 600,
                  width: 410,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: value.getCartList().length,
                      itemBuilder: (context, index) {
                        Product P = value.getCartList()[index];

                        return Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/shape10.png"))),
                              height: 220,
                              width: 340,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50, top: 30),
                            child: Row(
                              children: [
                                Container(
                                    height: 170,
                                    width: 170,
                                    child: Image.asset(P.imagePath)),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LightText(
                                      text: P.title,
                                      size: 20,
                                    ),
                                    BoldText(
                                      text: value.CartList[index].Price
                                          .toString(),
                                      size: 22,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        //

                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  // remove

                                                  if (value.ProductList[index]
                                                          .Quantity !=
                                                      1) {
                                                    value.Decrement(index);
                                                    value.decresePrice(
                                                        index,
                                                        value.ProductList[index]
                                                            .initialPrice);
                                                  }
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
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
                                              BoldText(
                                                  text: value.ProductList[index]
                                                      .Quantity
                                                      .toString()),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  // Add
                                                  if (value.ProductList[index]
                                                          .Quantity !=
                                                      10) {
                                                    value.Increment(index);
                                                    value.incresePrice(
                                                        index,
                                                        value.ProductList[index]
                                                            .initialPrice);
                                                  }
                                                },
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .yellow.shade800,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
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

                                        //
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 538),
                  child: Stack(
                    children: [
                      Image.asset("assets/images/shape11.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          height: 20,
                                          width: 20,
                                          child: Image.asset(
                                            "assets/icons/coupons.png",
                                            color: Colors.white,
                                          )),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      LightText(
                                        text: value.tracker
                                            ? "Congratulations! You Got 10 % Off  "
                                            : "Do you Have Coupon? ",
                                        size: 13,
                                        color: Colors.white,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          MyDialogBox().MyShowDialog(
                                              "Enter Coupon...",
                                              "sdf",
                                              "Contentfont",
                                              context,
                                              _controller);
                                        },
                                        child: BoldText(
                                          text: value.tracker
                                              ? "Remove Coupon?"
                                              : "Apply Now",
                                          size: 13,
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                //
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            BoldText(
                                              text: "Sub Total",
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 220,
                                            ),
                                            BoldText(
                                              text: value
                                                  .getSubTotal()
                                                  .toString(),
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            BoldText(
                                              text: "Tax",
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 260,
                                            ),
                                            BoldText(
                                              text: value.getTax().toString(),
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 35,
                                        ),
                                        Row(
                                          children: [
                                            BoldText(
                                              text: value.getTotal().toString(),
                                              color: Colors.white,
                                              size: 25,
                                            ),
                                            SizedBox(
                                              width: 90,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              height: 45,
                                              width: 190,
                                              child: Center(
                                                  child: BoldText(
                                                      text: "Finalize Order")),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ))),
    );
  }
}
