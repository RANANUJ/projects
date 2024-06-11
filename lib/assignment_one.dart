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
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Stawberry Pavlova"),
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
                    fontSize: 14,
                  )),
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
