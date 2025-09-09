import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state/mct_state.dart';
import 'screens/health_worker/health_worker_dashboard.dart'; // new dashboard
import 'screens/search_child_screen.dart'; // for navigation later

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
        debugShowCheckedModeBanner: false,
        title: 'Migrant Child Tracking',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const HealthWorkerDashboard(), // opens this dashboard first
        routes: {
          '/search-child': (context) => const SearchChildScreen(), // for navigation
          // Add other routes here if needed
        },
      ),
    );
  }
}
