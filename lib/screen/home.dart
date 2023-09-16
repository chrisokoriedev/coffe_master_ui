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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                CircleAvatar(
                  backgroundColor: lightBlueInput,
                  child: FlutterLogo(),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Find the best \ncoffee ☕ for you',
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold, wordSpacing: 1.6),
            ),
            const SizedBox(height: 20),
            TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'Find Your Coffee..',
                  hintStyle: const TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 125, 131, 145)),
                  prefixIcon: const Icon(CupertinoIcons.search),
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  fillColor: lightBlueInput,
                  border: inputborder(),
                  enabledBorder: inputborder()),
            ),
            const SizedBox(height: 20),
            TabBar(
                controller: _tabController,
                isScrollable: true,
                dividerColor: Colors.transparent,
                indicatorColor: brownColor,
                unselectedLabelColor: tabText,
                indicator: CircleTabIndicator(color: brownColor),
                tabs: myTabs),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2 + 120,
              child: TabBarView(
                controller: _tabController,
                children: tabViews,
              ),
            ),
            Text(
              'Special for you',
              style: text.titleMedium,
            ),
            const SizedBox(height: 10),
            Container(
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
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset('$coffeeUrl/coffee_dash.jpeg')),
                ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('5 Coffee Beans You Must Try!',style: text.bodyLarge,)
                  ],
                )),
              ]),
            )
          ]),
        ),
      ),
    );
  }

  OutlineInputBorder inputborder() => OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10));
}
