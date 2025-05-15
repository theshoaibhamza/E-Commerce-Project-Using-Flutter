// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_final_fields, must_be_immutable, sized_box_for_whitespace, sort_child_properties_last, non_constant_identifier_names, prefer_interpolation_to_compose_strings, unused_import, curly_braces_in_flow_control_structures, unused_field, avoid_types_as_parameter_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ytapp2/Models/Product.dart';

class Data extends ChangeNotifier {
  List<Product> CartList = [];
  double total = 0;
  double tax = 0;
  String Cons = "12345";

  bool tracker = false;

  String getCons() {
    return Cons;
  }

  void AddtoCart(Product product) {
    CartList.add(product);
    notifyListeners();
  }

  void RemoveFromCart(Product product) {
    CartList.remove(product);
    notifyListeners();
  }

  List<Product> getCartList() {
    return CartList;
  }

  double getTotal() {
    if (tracker == false) {
      total = 0;
      tax = 0;
      for (int i = 0; i < CartList.length; i++) {
        total += CartList[i].Price;
      }

      tax = total * 0.16;

      return total + tax;
    } else {
      return total + tax - total * 0.10;
    }
  }

  void setTracker() {
    tracker = !tracker;
    notifyListeners();
  }

  double getSubTotal() {
    total = 0;
    tax = 0;
    for (int i = 0; i < CartList.length; i++) {
      total += CartList[i].Price;
    }

    return total;
  }

  double getTax() {
    total = 0;
    tax = 0;
    for (int i = 0; i < CartList.length; i++) {
      total += CartList[i].Price;
    }

    tax = total * 0.16;

    return tax;
  }

  // Products List

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

  // For You Class
  List<Product> ProductListForYou = [
    Product(
        imagePath: "assets/images/product5.png",
        iconPath: "assets/icons/vegetable.png",
        Category: "Fruit",
        title: "Banana",
        Desc: "this is very blah blah blah",
        Price: 80,
        initialPrice: 80,
        Quantity: 1),
    Product(
        imagePath: "assets/images/product6.png",
        iconPath: "assets/icons/vegetable.png",
        Category: "Vege",
        title: "Ayein",
        Desc: "this is very blah blah blah",
        Price: 90,
        initialPrice: 90,
        Quantity: 1),
  ];

  //Increment

  Increment(int index) {
    if (ProductList[index].Quantity != 10) {
      ProductList[index].Quantity++;
      notifyListeners();
    }
  }

  //Decrement

  Decrement(int index) {
    if (ProductList[index].Quantity != 1) {
      ProductList[index].Quantity--;
      notifyListeners();
    }
  }

  incresePrice(int index, double PR) {
    ProductList[index].Price = ProductList[index].Price + PR;
    notifyListeners();
  }

  decresePrice(int index, double PR) {
    ProductList[index].Price = ProductList[index].Price - PR;
    notifyListeners();
  }
}
