import 'package:flutter/material.dart';

class ContainerWidgetPage extends StatelessWidget {
  const ContainerWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Widget Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 400,
            margin: const EdgeInsets.fromLTRB(100, 30, 10, 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text("Container 1"),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
            child: Image.asset(
              "assets/cutest-dog-breeds-jpg.jpg",
              width: 200,
            ),
          )
        ],
      ),
    );
  }
}
