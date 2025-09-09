import 'package:flutter/material.dart';

class SearchChildScreen extends StatelessWidget {
  const SearchChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Child")),
      body: const Center(
        child: Text(
          "Search functionality coming soon...",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
