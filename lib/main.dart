import 'package:flutter/material.dart';
import 'package:webview_for_browsers/grid_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Simple Example')),
        body: const Column(
          children: [
            Expanded(child: GridLayout(numberOfWebViews: 10)),
          ],
        ),
      ),
    );
  }
}
