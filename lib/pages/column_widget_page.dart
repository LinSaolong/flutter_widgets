import 'package:flutter/material.dart';

class ColumnWidgetPage extends StatelessWidget {
  const ColumnWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Widget Page"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                "assets/cutest-dog-breeds-jpg.jpg",
                width: 250,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                "assets/cutest-dog-breeds-jpg.jpg",
                width: 250,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                "assets/cutest-dog-breeds-jpg.jpg",
                width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
