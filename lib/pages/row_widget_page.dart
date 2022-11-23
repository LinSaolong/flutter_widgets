import 'package:flutter/material.dart';

class RowWidgetPage extends StatelessWidget {
  const RowWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Widget Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text("child 1")),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text("child 2")),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text("child 3")),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text("child 4")),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text("child 5")),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/cutest-dog-breeds-jpg.jpg",
                    width: 100,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/cutest-dog-breeds-jpg.jpg",
                    width: 100,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/cutest-dog-breeds-jpg.jpg",
                    width: 100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
