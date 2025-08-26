import 'package:flutter/material.dart';
import '../models/child_profile.dart';

class ChildDetailScreen extends StatelessWidget {
  final ChildProfile child;

  const ChildDetailScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(child.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Guardian: \${child.guardianName}'),
            const SizedBox(height: 8),
            Text('Date of Birth: \${child.dateOfBirth.toLocal()}'),
            const SizedBox(height: 8),
            Text('Vaccines: \${child.vaccines.isEmpty ? "None" : child.vaccines.join(", ")}'),
          ],
        ),
      ),
    );
  }
}
