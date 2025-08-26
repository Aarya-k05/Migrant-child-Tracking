import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../state/mct_state.dart';
import '../models/child_profile.dart';

class AddChildScreen extends StatefulWidget {
  const AddChildScreen({super.key});

  @override
  State<AddChildScreen> createState() => _AddChildScreenState();
}

class _AddChildScreenState extends State<AddChildScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _guardianController = TextEditingController();
  DateTime? _dob;

  void _submit() {
    if (_formKey.currentState!.validate() && _dob != null) {
      final child = ChildProfile(
        id: const Uuid().v4(),
        name: _nameController.text,
        dateOfBirth: _dob!,
        guardianName: _guardianController.text,
      );
      context.read<MCTState>().addChild(child);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Child')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Child Name'),
                validator: (value) =>
                    value!.isEmpty ? 'Enter child name' : null,
              ),
              TextFormField(
                controller: _guardianController,
                decoration: const InputDecoration(labelText: 'Guardian Name'),
                validator: (value) =>
                    value!.isEmpty ? 'Enter guardian name' : null,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    _dob == null
                        ? 'Select Date of Birth'
                        : 'DOB: \${_dob!.toLocal()}'.split(' ')[0],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime(2015),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                      );
                      if (picked != null) {
                        setState(() {
                          _dob = picked;
                        });
                      }
                    },
                    child: const Text('Pick Date'),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
