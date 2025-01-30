import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaletteScreen extends StatelessWidget {
  const PaletteScreen({super.key});

  static final List<Color> colorPalette = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color Palette')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: colorPalette.length,
        itemBuilder: (context, index) {
          final color = colorPalette[index];
          return InkWell(
            onTap: () {
              context.push('/palette/detail', extra: color);
            },
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        },
      ),
    );
  }
}
