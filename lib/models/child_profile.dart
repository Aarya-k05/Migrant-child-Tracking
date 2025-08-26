class ChildProfile {
  final String id;
  final String name;
  final DateTime dateOfBirth;
  final String guardianName;
  final List<String> vaccines;

  ChildProfile({
    required this.id,
    required this.name,
    required this.dateOfBirth,
    required this.guardianName,
    this.vaccines = const [],
  });
}
