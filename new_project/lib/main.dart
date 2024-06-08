import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          color: Color.fromARGB(255, 214, 238, 249),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: const Text('Strawberry Pavlova',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          color: Color.fromARGB(255, 208, 236, 249),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
                'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova When ever there is change in magnetic field magnetic flux linked with the coil changes and hence an induced emf is produced in the coil The food that contain all the nutrients in right proportion is called balanced diet.',
                style: TextStyle(fontSize: 16)),
          ),
        ),
      ),
      const SizedBox(height: 16),
      Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            color: Color.fromARGB(255, 210, 236, 248),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 250, 237, 116),
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 250, 237, 116),
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 250, 237, 116),
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 250, 237, 116),
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 250, 237, 116),
                ),
                const Text('170 Reviews', style: TextStyle(fontSize: 16)),
              ],
            ),
          )),
    );
  }
}
