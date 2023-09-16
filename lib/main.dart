import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const lightBlueInput = Color(0xff0e162b);
const scafffoldBg = Color.fromARGB(255, 2, 10, 22);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scafffoldBg,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.amber, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

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

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Coffee'),
    const Tab(text: 'Tea'),
    const Tab(text: 'Pastries'),
    const Tab(text: 'Sandwiches and Snack'),
    const Tab(text: 'Cold Beverages'),
  ];

  @override
  Widget build(BuildContext context) {
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
                  fontSize: 30, fontWeight: FontWeight.bold, wordSpacing: 1.6),
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
          ]),
        ),
      ),
    );
  }

  OutlineInputBorder inputborder() => OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10));
}
