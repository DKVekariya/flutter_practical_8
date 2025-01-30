import 'package:flutter/material.dart';

class ColorPaletteItem extends StatelessWidget {
  final String color;
  final VoidCallback onTap;

  const ColorPaletteItem({
    super.key,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color:
              Color(int.parse(color.substring(1, 7), radix: 16) + 0xFF000000),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
