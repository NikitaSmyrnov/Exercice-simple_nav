import 'package:flutter/material.dart';
import 'package:simplenav/main.dart';

class SecondPage extends StatelessWidget {
  final String data;

  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 2"),
      ),
      body: Row(
        children: [
          Container(
            height: 20,
            width: 200,
            child: Text(data),  // Display the passed data
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Navigate back to the first page
            },
            child: Text("Back to Page 1"),
          ),
        ],
      ),
    );
  }
}