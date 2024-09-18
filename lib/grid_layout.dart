import 'dart:math';
import 'package:flutter/material.dart';
import 'package:webview_for_browsers/custom_web_view.dart';

class GridLayout extends StatelessWidget {
  final int numberOfWebViews;

  const GridLayout({super.key, required this.numberOfWebViews});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          const spacing = 4.0; // Espaciado de los items

          // Lógica para calcular columnas y filas
          final columns = (sqrt(numberOfWebViews)).ceil();
          final rows = (numberOfWebViews / columns).ceil();

          // Ancho y alto de cada elemento del grid
          final itemWidth = (constraints.maxWidth / columns);
          final itemHeight = (constraints.maxHeight / rows);

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns, // Número de columnas
              crossAxisSpacing: spacing, // Espaciado horizontal
              mainAxisSpacing: spacing, // Espaciado vertical
              childAspectRatio: itemWidth / itemHeight, // Relación de aspecto
            ),
            itemCount: numberOfWebViews,
            itemBuilder: (context, index) {
              return const CustomWebView();
            },
          );
        },
      ),
    );
  }
}
