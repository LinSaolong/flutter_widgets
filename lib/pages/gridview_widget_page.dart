import 'package:flutter/material.dart';

class GridViewWidgetPage extends StatelessWidget {
  GridViewWidgetPage({Key? key}) : super(key: key);

  List<String> items = [
    "assets/chihuahua-dog-puppy-cute-39317.jpeg",
    "assets/cutest-dog-breeds-jpg.jpg",
    "assets/pexels-photo-58997.jpeg",
    "assets/pexels-photo-59523.jpeg",
    "assets/pexels-photo-164186.jpeg",
    "assets/pexels-photo-551628.jpeg",
    "assets/pexels-photo-731022.jpeg",
    "assets/pexels-photo-1108099.jpeg",
    "assets/pexels-photo-1254140.jpeg",
    "assets/chihuahua-dog-puppy-cute-39317.jpeg",
    "assets/cutest-dog-breeds-jpg.jpg",
    "assets/pexels-photo-58997.jpeg",
    "assets/pexels-photo-59523.jpeg",
    "assets/pexels-photo-164186.jpeg",
    "assets/pexels-photo-551628.jpeg",
    "assets/pexels-photo-731022.jpeg",
    "assets/pexels-photo-1108099.jpeg",
    "assets/pexels-photo-1254140.jpeg",
    "assets/chihuahua-dog-puppy-cute-39317.jpeg",
    "assets/cutest-dog-breeds-jpg.jpg",
    "assets/pexels-photo-58997.jpeg",
    "assets/pexels-photo-59523.jpeg",
    "assets/pexels-photo-164186.jpeg",
    "assets/pexels-photo-551628.jpeg",
    "assets/pexels-photo-731022.jpeg",
    "assets/pexels-photo-1108099.jpeg",
    "assets/pexels-photo-1254140.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Widget Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          children: List.generate(
            items.length,
            (index) => GridItem(
              url: items[index],
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({Key? key, required this.url, required this.index})
      : super(key: key);
  final String url;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Image.asset(
            url,
            height: 80,
          ),
          Text("Image ${index + 1}")
        ],
      ),
    );
  }
}
