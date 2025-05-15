// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_final_fields, must_be_immutable, sized_box_for_whitespace, sort_child_properties_last, non_constant_identifier_names, prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';
import 'package:ytapp2/Models/Product.dart';
import 'package:ytapp2/Pages/BestSellerDetailPage.dart';
import 'package:ytapp2/Widgets/BoldText.dart';

class BestSeller extends StatelessWidget {
  BestSeller({super.key});

  List<Product> ProductList = [
    Product(
        imagePath: "assets/images/product2.png",
        iconPath: "assets/icons/harvest.png",
        Category: "Fruit",
        title: "Apple",
        Desc: "this is very blah blah blah",
        Price: 40,
        initialPrice: 40,
        Quantity: 1),
    Product(
        imagePath: "assets/images/product1.png",
        iconPath: "assets/icons/bakery.png",
        Category: "Bakery",
        title: "Fig",
        Desc: "this is very blah blah blah",
        Price: 50,
        initialPrice: 50,
        Quantity: 1),
    Product(
        imagePath: "assets/images/product3.png",
        iconPath: "assets/icons/juice.png",
        Category: "Drink",
        title: "Graps",
        Desc: "this is very blah blah blah",
        Price: 80,
        initialPrice: 80,
        Quantity: 1),
    Product(
        imagePath: "assets/images/product4.png",
        iconPath: "assets/icons/vegetable.png",
        Category: "Vege",
        title: "Lemon",
        Desc: "this is very blah blah blah",
        Price: 60,
        initialPrice: 60,
        Quantity: 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 260,
        width: 380,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, Index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Bestsellerdetailpage(
                              initialPrice: ProductList[Index].initialPrice,
                              Quantity: ProductList[Index].Quantity,
                              imagePath: ProductList[Index].imagePath,
                              title: ProductList[Index].title,
                              Category: ProductList[Index].Category,
                              Desc: ProductList[Index].Desc,
                              Price: ProductList[Index].Price,
                              iconPath: ProductList[Index].iconPath)));
                },
                child: Stack(
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
                                  child:
                                      Image.asset(ProductList[Index].imagePath),
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
                                      text: ProductList[Index].Category,
                                      color: Colors.white,
                                    ),
                                    BoldText(
                                      text: ProductList[Index].title,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                BoldText(
                                  text: ProductList[Index].Price.toString(),
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
