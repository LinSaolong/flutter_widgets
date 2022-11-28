import 'package:flutter/material.dart';

class RowWidgetPage extends StatelessWidget {
  const RowWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Widget Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text("child 1"),
              Text("child 2"),
              Text("child 3"),
              Text("child 4"),
              Text("child 5"),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/cutest-dog-breeds-jpg.jpg",
                width: 100,
              ),
              Image.asset(
                "assets/cutest-dog-breeds-jpg.jpg",
                width: 100,
              ),
              Image.asset(
                "assets/cutest-dog-breeds-jpg.jpg",
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
