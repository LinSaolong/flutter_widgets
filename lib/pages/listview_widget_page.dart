import 'package:flutter/material.dart';

class ListViewWidgetPage extends StatelessWidget {
  const ListViewWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Widget Page')),
      body: SizedBox(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text(
                      "child 1",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text(
                      "child 2",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text(
                      "child 3",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text(
                      "child 4",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text(
                      "child 5",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 500,
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Image.asset("assets/cutest-dog-breeds-jpg.jpg",
                          width: 250),
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
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Image.asset(
                        "assets/cutest-dog-breeds-jpg.jpg",
                        width: 250,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
