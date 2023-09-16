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

