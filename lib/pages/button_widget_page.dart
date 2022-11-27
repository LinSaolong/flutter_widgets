import 'package:flutter/material.dart';

class ButtonWidgetPage extends StatelessWidget {
  const ButtonWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print("TextButton Pressed");
              },
              child: const Text(
                "TextButton",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blueAccent,
                ),
                overlayColor: MaterialStateProperty.all<Color>(
                  Colors.red,
                ),
                shadowColor: MaterialStateProperty.all<Color>(
                  Colors.green,
                ),
              ),
              onPressed: () {
                print("ElevatedButton Pressed");
              },
              child: const Text(
                "ElevatedButton",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(10)),
              ),
              onPressed: () {
                print("OutlinedButton Pressed");
              },
              child: const Text(
                "OutlinedButton",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_filled,
              ),
            )
          ],
        ),
      ),
    );
  }
}
