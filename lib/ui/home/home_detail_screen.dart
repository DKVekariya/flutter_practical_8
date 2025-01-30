import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDetailScreen extends StatelessWidget {
  final int number;

  const HomeDetailScreen({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number $number'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Text(
          'Selected Number: $number',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
