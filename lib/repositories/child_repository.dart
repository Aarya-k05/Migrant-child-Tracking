import '../models/child_profile.dart';

abstract class ChildRepository {
  List<ChildProfile> getAllChildren();
  void addChild(ChildProfile child);
  void updateChild(ChildProfile child);
}
