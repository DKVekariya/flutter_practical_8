import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<Color> colorPalette = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.indigo,
    Colors.amber,
  ];

  Color getColorForIndex(int index) {
    return colorPalette[index % colorPalette.length];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          final number = index + 1;
          final color = getColorForIndex(index);

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: color,
                child: Text(
                  '$number',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text('Number $number'),
              subtitle: Text('Color: #${color.value.toRadixString(16).toUpperCase()}'),
              trailing: Icon(Icons.arrow_forward_ios, color: color),
              onTap: () => context.go(
                '/home/detail/$number',
                extra: color,
              ),
            ),
          );
        },
      ),
    );
  }
}
