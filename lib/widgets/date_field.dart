// Reusable date picker widget (not used yet, MVP only)
import 'package:flutter/material.dart';

class DateField extends StatefulWidget {
  final void Function(DateTime) onDateSelected;

  const DateField({super.key, required this.onDateSelected});

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  DateTime? _selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(_selected == null
            ? 'No date selected'
            : 'Selected: \${_selected!.toLocal()}'.split(' ')[0]),
        const Spacer(),
        ElevatedButton(
          onPressed: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime.now(),
            );
            if (picked != null) {
              setState(() {
                _selected = picked;
              });
              widget.onDateSelected(picked);
            }
          },
          child: const Text('Pick Date'),
        ),
      ],
    );
  }
}
