import 'package:flutter/material.dart';
import 'package:june_10/assignment_one.dart';
import 'package:june_10/new_screen_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //constructor
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NewScreenDesign(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //constructor
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("widget.title"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.notifications),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Action"),
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                //text
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.star),
                    Text("Prep:"),
                    Text("20-30mins")
                  ],
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //body of the function
          print("FAB is clicked");
        },
        tooltip: 'Increment Changed',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
