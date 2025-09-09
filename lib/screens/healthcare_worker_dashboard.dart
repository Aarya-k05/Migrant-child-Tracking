import 'package:flutter/material.dart';
import 'add_child_screen.dart';
import 'search_child_screen.dart';

class HealthcareWorkerDashboard extends StatelessWidget {
  const HealthcareWorkerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Health Worker Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            _DashboardCard(
              title: "Register Child",
              icon: Icons.person_add,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AddChildScreen()),
                );
              },
            ),
            _DashboardCard(
              title: "Search Child",
              icon: Icons.search,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SearchChildScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _DashboardCard({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: C
