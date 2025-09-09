import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state/mct_state.dart';
import 'screens/healthcare_worker_dashboard.dart'; // directly under screens
import 'screens/search_child_screen.dart';        // directly under screens

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
                                                                          home: const HealthcareWorkerDashboard(), // note the class name
                                                                                  routes: {
                                                                                            '/search-child': (context) => const SearchChildScreen(),
                                                                                                    },
                                                                                                          ),
                                                                                                              );
                                                                                                                }
                                                                                                                }
                                                                                                                