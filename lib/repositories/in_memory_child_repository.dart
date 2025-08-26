import '../models/child_profile.dart';
import 'child_repository.dart';

class InMemoryChildRepository implements ChildRepository {
  final List<ChildProfile> _children = [];

  @override
  List<ChildProfile> getAllChildren() => List.unmodifiable(_children);

  @override
  void addChild(ChildProfile child) {
    _children.add(child);
  }

  @override
  void updateChild(ChildProfile child) {
    final index = _children.indexWhere((c) => c.id == child.id);
    if (index != -1) {
      _children[index] = child;
    }
  }
}
