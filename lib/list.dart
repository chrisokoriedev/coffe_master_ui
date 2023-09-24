import 'package:coffe_master_ui/import.dart';
import 'package:coffe_master_ui/tab/cold_beverages_tab.dart';
import 'package:coffe_master_ui/tab/pastries_tab.dart';
import 'package:coffe_master_ui/tab/sandwiches_tab.dart';
import 'package:coffe_master_ui/tab/tea_tab.dart';
import 'package:flutter/material.dart';

import 'tab/coffee_tab.dart';

final List<Tab> myTabs = <Tab>[
  const Tab(text: 'Coffee'),
  const Tab(text: 'Tea'),
  const Tab(text: 'Pastries'),
  const Tab(text: 'Sandwiches and Snack'),
  const Tab(text: 'Cold Beverages'),
];

final List<Widget> tabViews = [
  const CoffeeTab(),
  const TeaTab(),
  const PastriesTab(),
  const SandWichesTab(),
  const ColdBeveragesTab(),
];

class ProductModel {
  final String title;
  final String subtitle;
  final String imageUrl;
  final double rating;
  final String comment;
  final String? description;
  final double price;
  ProductModel(this.title, this.subtitle, this.imageUrl, this.rating,
      this.comment, this.price, this.description);
}

List<ProductModel> getCoffeeDetail = [
  ProductModel(
      'Two Guns Espresso',
      'With oat milk',
      '$coffeeUrl/coffee_a.jpeg',
      4.5,
      'it great',
      3.99,
      'Espresso with oat milk coffee is a delicious and creamy coffee drink that is perfect for those who are looking for a dairy-free option. It is made with espresso and oat milk, and is typically sweetened with honey or sugar. Espresso with oat milk coffee has a rich, nutty flavor and is a great way to start your day. If you are looking for a coffee drink that is both delicious and guilt-free, espresso with oat milk coffee is a great choice. It is also a good option for those who are looking for a coffee drink that is lower in calories and fat than a traditional latte.'),
  ProductModel(
      'Latte Coffee',
      'With choco milk',
      '$coffeeUrl/coffee_b.jpeg',
      4.5,
      'it great',
      3.99,
      'Latte with normal milk is a classic coffee drink that is loved by people all over the world. It is made with espresso and steamed milk, and is typically topped with a layer of foamed milk. Latte with normal milk has a rich, creamy flavor and is a great way to start your day.If you are looking for a coffee drink that is both delicious and comforting, latte with normal milk is a great choice. It is also a good option for those who are looking for a coffee drink that is not too strong or too sweet.'),
  ProductModel(
      'Cortado Coffee',
      'With normal milk',
      '$coffeeUrl/coffee_c.jpg',
      4.5,
      'it great',
      3.99,
      'Cortado coffee is a small, espresso-based drink that is popular in Spain and Portugal. It is made with equal parts espresso and steamed milk, and is typically served in a short glass. Cortado coffee has a rich, creamy flavor and is a great way to start your day.If you are looking for a coffee drink that is both delicious and satisfying, Cortado coffee is a great choice. It is also a good option for those who are looking for a coffee drink that is lower in caffeine than a traditional cup of coffee.')
];
List<ProductModel> getTeaDetails = [
  ProductModel('Black Tea', 'With nothing', '$teaUrl/tea_a.png', 4.5,
      'it great', 3.99, ''),
  ProductModel('Herbal Teae', 'With fresh leaf', '$teaUrl/tea_b.jpg', 4.5,
      'it great', 3.99, ''),
  ProductModel(
      'Rooibos Tea', '', '$teaUrl/tea_c.jpg', 4.5, 'it great', 3.99, '')
];
List<ProductModel> getPastriesDetails = [
  ProductModel('Two Guns Espresso', 'With nothing', '$coffeeUrl/coffee_a.jpeg',
      4.5, 'it great', 3.99, ''),
  ProductModel('Latte Coffee', 'With fresh leaf', '$coffeeUrl/coffee_b.jpeg',
      4.5, 'it great', 3.99, ''),
  ProductModel('Cortado Coffee', '', '$coffeeUrl/coffee_c.jpg', 4.5, 'it great',
      3.99, '')
];
List<ProductModel> getSandwichesAndSnackDetails = [
  ProductModel('Two Guns Espresso', 'With oat milk', '$coffeeUrl/coffee_a.jpeg',
      4.5, 'it great', 3.99, ''),
  ProductModel('Latte Coffee', 'With choco milk', '$coffeeUrl/coffee_b.jpeg',
      4.5, 'it great', 3.99, ''),
  ProductModel('Cortado Coffee', 'With normal milk', '$coffeeUrl/coffee_c.jpg',
      4.5, 'it great', 3.99, '')
];
List<ProductModel> getColdBeverageDetails = [
  ProductModel('Two Guns Espresso', 'With oat milk', '$coffeeUrl/coffee_a.jpeg',
      4.5, 'it great', 3.99, ''),
  ProductModel('Latte Coffee', 'With choco milk', '$coffeeUrl/coffee_b.jpeg',
      4.5, 'it great', 3.99, ''),
  ProductModel('Cortado Coffee', 'With normal milk', '$coffeeUrl/coffee_c.jpg',
      4.5, 'it great', 3.99, '')
];
