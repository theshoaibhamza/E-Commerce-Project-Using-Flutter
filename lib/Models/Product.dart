// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers, prefer_final_fields, must_be_immutable, sized_box_for_whitespace, sort_child_properties_last, empty_constructor_bodies, non_constant_identifier_names
class Product {
  String title;
  String imagePath;
  String iconPath;
  String Category;
  double Price;
  double initialPrice;
  String Desc;
  int Quantity;
  Product(
      {required this.initialPrice,
      required this.Quantity,
      required this.imagePath,
      required this.title,
      required this.Category,
      required this.Desc,
      required this.Price,
      required this.iconPath});
}
