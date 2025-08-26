import 'package:flutter/material.dart';

class VaccineChips extends StatelessWidget {
  final List<String> vaccines;

  const VaccineChips({super.key, required this.vaccines});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: vaccines
          .map((v) => Chip(
                label: Text(v),
                backgroundColor: Colors.green.shade100,
              ))
          .toList(),
    );
  }
}
