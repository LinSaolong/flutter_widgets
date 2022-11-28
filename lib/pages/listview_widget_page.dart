import 'package:flutter/material.dart';

class ListViewWidgetPage extends StatelessWidget {
  const ListViewWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
      'Item 6',
      'Item 7',
      'Item 8',
      'Item 9',
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Widget Page')),
      body: SizedBox(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 500,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index],
                          style: const TextStyle(fontSize: 25),
                        ),
                        const SizedBox(height: 30)
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index],
                        style: const TextStyle(fontSize: 25),
                      ),
                      const SizedBox(width: 30)
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
