import 'package:flutter/material.dart';

class ImageWidgetPage extends StatelessWidget {
  const ImageWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Widget"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: Image.asset(
                "assets/cutest-dog-breeds-jpg.jpg",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.blueAccent,
              width: 300,
              height: 300,
              child: Image.network(
                "https://www.goodinfonet.com/uploads/news/goodinfonet_why_dogs_are_so_cute_1597490163_0.jpg",
                fit: BoxFit.contain,
                height: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
