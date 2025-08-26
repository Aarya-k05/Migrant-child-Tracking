import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/mct_state.dart';
import '../models/child_profile.dart';
import 'add_child_screen.dart';
import 'child_detail_screen.dart';

class ChildListScreen extends StatelessWidget {
  const ChildListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final children = context.watch<MCTState>().children;

    return Scaffold(
      appBar: AppBar(title: const Text('Children')),
      body: children.isEmpty
          ? const Center(child: Text('No children added yet.'))
          : ListView.builder(
              itemCount: children.length,
              itemBuilder: (context, index) {
                final child = children[index];
                return ListTile(
                  title: Text(child.name),
                  subtitle: Text('Guardian: ${child.guardianName}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChildDetailScreen(child: child),
                      ),
                    );
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddChildScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
