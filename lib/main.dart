import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/button_widget_page.dart';
import 'package:flutter_widgets/pages/column_widget_page.dart';
import 'package:flutter_widgets/pages/container_widget_page.dart';
import 'package:flutter_widgets/pages/form_widget_page.dart';
import 'package:flutter_widgets/pages/gridview_widget_page.dart';
import 'package:flutter_widgets/pages/image_widget_page.dart';
import 'package:flutter_widgets/pages/listview_widget_page.dart';
import 'package:flutter_widgets/pages/navigator_page.dart';
import 'package:flutter_widgets/pages/row_widget_page.dart';
import 'package:flutter_widgets/pages/text_widget_page.dart';
import 'package:flutter_widgets/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TextWidgetPage(),
                  ),
                );
              },
              text: "Text Widget",
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ButtonWidgetPage(),
                  ),
                );
              },
              text: "Button Widget",
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ImageWidgetPage(),
                  ),
                );
              },
              text: "Image Widget",
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerWidgetPage(),
                  ),
                );
              },
              text: "Container Widget",
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowWidgetPage(),
                  ),
                );
              },
              text: "Row Widget",
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnWidgetPage(),
                  ),
                );
              },
              text: "Column Widget",
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViewWidgetPage(),
                  ),
                );
              },
              text: "ListView Widget",
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridViewWidgetPage(),
                  ),
                );
              },
              text: "GridView Widget",
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigatorPage(),
                  ),
                );
              },
              text: "Navigator page Widget",
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormPage(),
                  ),
                );
              },
              text: "Form Page",
            ),
          ],
        ),
      ),
    );
  }
}
