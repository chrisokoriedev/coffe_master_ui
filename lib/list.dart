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
  final String des;
  final double price;
  ProductModel(this.title, this.subtitle, this.imageUrl, this.rating, this.des,
      this.price);
}

List<ProductModel> getCoffeeDetail = [
  ProductModel('Two Guns Espresso', 'With oat milk', '$coffeeUrl/coffee_a.jpeg',
      4.5, 'it great', 3.99),
  ProductModel('Latte Coffee', 'With choco milk', '$coffeeUrl/coffee_b.jpeg',
      4.5, 'it great', 3.99),
  ProductModel('Cortado Coffee', 'With normal milk', '$coffeeUrl/coffee_c.jpg',
      4.5, 'it great', 3.99)
];
List<ProductModel> getTeaDetails = [
  ProductModel('Two Guns Espresso', 'With oat milk', '$teaUrl/tea_a.png', 4.5,
      'it great', 3.99),
  ProductModel('Latte Coffee', 'With choco milk', '$teaUrl/tea_b.jpg', 4.5,
      'it great', 3.99),
  ProductModel('Cortado Coffee', 'With normal milk', '$teaUrl/tea_c.jpg', 4.5,
      'it great', 3.99)
];
List<ProductModel> getPastriesDetails = [
  ProductModel('Two Guns Espresso', 'With oat milk', '$coffeeUrl/coffee_a.jpeg',
      4.5, 'it great', 3.99),
  ProductModel('Latte Coffee', 'With choco milk', '$coffeeUrl/coffee_b.jpeg',
      4.5, 'it great', 3.99),
  ProductModel('Cortado Coffee', 'With normal milk', '$coffeeUrl/coffee_c.jpg',
      4.5, 'it great', 3.99)
];
List<ProductModel> getSandwichesAndSnackDetails = [
  ProductModel('Two Guns Espresso', 'With oat milk', '$coffeeUrl/coffee_a.jpeg',
      4.5, 'it great', 3.99),
  ProductModel('Latte Coffee', 'With choco milk', '$coffeeUrl/coffee_b.jpeg',
      4.5, 'it great', 3.99),
  ProductModel('Cortado Coffee', 'With normal milk', '$coffeeUrl/coffee_c.jpg',
      4.5, 'it great', 3.99)
];
List<ProductModel> getColdBeverageDetails = [
  ProductModel('Two Guns Espresso', 'With oat milk', '$coffeeUrl/coffee_a.jpeg',
      4.5, 'it great', 3.99),
  ProductModel('Latte Coffee', 'With choco milk', '$coffeeUrl/coffee_b.jpeg',
      4.5, 'it great', 3.99),
  ProductModel('Cortado Coffee', 'With normal milk', '$coffeeUrl/coffee_c.jpg',
      4.5, 'it great', 3.99)
];
