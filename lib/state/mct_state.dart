import 'package:flutter/foundation.dart';
import '../models/child_profile.dart';
import '../repositories/in_memory_child_repository.dart';

class MCTState extends ChangeNotifier {
  final _repo = InMemoryChildRepository();

  List<ChildProfile> get children => _repo.getAllChildren();

  void addChild(ChildProfile child) {
    _repo.addChild(child);
    notifyListeners();
  }

  void updateChild(ChildProfile child) {
    _repo.updateChild(child);
    notifyListeners();
  }
}
