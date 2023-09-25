import 'package:animate_do/animate_do.dart';
import 'package:coffe_master_ui/import.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int start = 200;
  int delay = 200;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BounceInLeft(
              delay: Duration(milliseconds: delay),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/profile.jpg',
                        width: 40,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 30),
            BounceInUp(
              delay: Duration(milliseconds: delay + start),
              child: const Text(
                'Find the best \ncoffee ☕ for you',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1.6),
              ),
            ),
            const SizedBox(height: 20),
            FadeInDown(
              delay: Duration(milliseconds: delay + 2 * start),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Find Your Coffee..',
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 125, 131, 145)),
                    prefixIcon: const Icon(CupertinoIcons.search),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    fillColor: lightBlueInput,
                    border: inputborder(),
                    enabledBorder: inputborder()),
              ),
            ),
            const SizedBox(height: 20),
            SlideInLeft(
              delay: Duration(milliseconds: delay + 3 * start),
              child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  dividerColor: Colors.transparent,
                  indicatorColor: brownColor,
                  unselectedLabelColor: tabText,
                  indicator: CircleTabIndicator(color: brownColor),
                  tabs: myTabs),
            ),
            SlideInRight(
              delay: Duration(milliseconds: delay + 3 * start),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2 + 120,
                child: TabBarView(
                  controller: _tabController,
                  children: tabViews,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Special for you',
              style: text.titleMedium,
            ),
            const SizedBox(height: 10),
            SlideInLeft(
              delay: Duration(milliseconds: delay + 3 * start),
              child: Container(
                height: 120,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: lightBlueInput,
                  borderRadius: BorderRadius.circular(15),
                  gradient: linearPattern(),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              '$coffeeUrl/coffee_dash.jpeg',
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '5 Coffee Beans You Must Try!',
                            style: text.bodyLarge,
                          )
                        ],
                      )),
                    ]),
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        width: double.infinity,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.home_filled,
              size: 18,
              color: brownColor,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              size: 18,
              color: tabText,
            ),
            Icon(
              CupertinoIcons.color_filter_fill,
              size: 18,
              color: tabText,
            ),
            Icon(
              Icons.notifications,
              size: 18,
              color: tabText,
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder inputborder() => OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10));
}
