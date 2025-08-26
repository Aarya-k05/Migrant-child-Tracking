import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state/mct_state.dart';
import 'screens/child_list_screen.dart';

void main() {
  runApp(const MCTApp());
}

class MCTApp extends StatelessWidget {
  const MCTApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MCTState(),
      child: MaterialApp(
        title: 'Migrant Child Tracker',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const ChildListScreen(),
      ),
    );
  }
}
