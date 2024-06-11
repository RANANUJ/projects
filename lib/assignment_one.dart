import 'package:flutter/material.dart';

class AssignmentOne extends StatefulWidget {
  const AssignmentOne({super.key});

  @override
  State<AssignmentOne> createState() => _AssignmentOneState();
}

class _AssignmentOneState extends State<AssignmentOne> {
  var cookTime = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        //  backgroundColor: Colors.grey,
        title: const Text("Stawberry"),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                cookTime++;
              });
            },
            child: const Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue quam quis ante mollis blandit. Nunc elementum libero ipsum, eget tincidunt eros sollicitudin id. Integer cursus arcu eu interdum porta. Etiam id ante hendrerit, mollis diam ac, vulputate enim. Vivamus hendrerit interdum sem, nec bibendum orci finibus a. Curabitur faucibus consectetur nibh. Vivamus sit amet dui at mauris scelerisque imperdiet et eget ante. Sed eget tincidunt metus, eu bibendum arcu. Donec a rutrum libero.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "assets/fonts/Roboto-Black.ttf",
                    color: Colors.pink,
                    fontSize: 14,
                    letterSpacing: 2,
                    wordSpacing: 2,
                    backgroundColor: Color.fromARGB(0, 135, 90, 90)),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("170 Reviews"),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  commonRowWidget(Icon(Icons.restaurant), "Prep", "25 Mins"),
                  commonRowWidget(Icon(Icons.timer), "Cook", "$cookTime Hours"),
                  commonRowWidget(Icon(Icons.feed), "Feed", "4-6"),
                  // const Column(
                  //   children: [
                  //     Icon(Icons.restaurant),
                  //     Text("Prep:"),
                  //     Text("25 mins")
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     const Icon(Icons.timer),
                  //     const Text("Cook"),
                  //     Text("$cookTime Hour")
                  //   ],
                  // ),
                  // const Column(
                  //   children: [Icon(Icons.feed), Text("Feed"), Text("4-6")],
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  commonRowWidget(Icon icon, String firstText, String secondText) {
    return Column(
      children: [icon, Text(firstText), Text(secondText)],
    );
  }
}
