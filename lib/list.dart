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
  const Center(child: Text('Tab 2 content')),
  const Center(child: Text('Tab 2 content')),
  const Center(child: Text('Tab 2 content')),
  const Center(child: Text('Tab 2 content')),
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
  ProductModel(
      'Two Guns Espresso',
      'With oat milk',
      'https://images.unsplash.com/photo-1497636577773-f1231844b336?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      4.5,
      'it great',
      3.99),
  ProductModel(
      'Two Guns Espresso',
      'With oat milk',
      'https://images.unsplash.com/photo-1497636577773-f1231844b336?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      4.5,
      'it great',
      3.99)
];
