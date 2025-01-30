import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaletteDetailScreen extends StatelessWidget {
  final Color selectedColor;

  const PaletteDetailScreen({
    super.key,
    required this.selectedColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color: ${selectedColor.value.toRadixString(16).toUpperCase()}'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: selectedColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
