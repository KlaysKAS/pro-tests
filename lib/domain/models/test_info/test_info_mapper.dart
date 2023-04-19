import 'package:pro_tests/data/model/test_info/test_info.dart' as back;
import 'package:pro_tests/domain/models/test_info/test_info.dart';

class TestInfoMapper {
  static TestInfo fromBackend(back.TestInfo info) {
    return TestInfo(info.id!, info.title, info.description, info.author?.fullName ?? '???');
  }

  static back.TestInfo fromDomain(TestInfo info) {
    return back.TestInfo(id: info.id, title: info.title, description: info.description);
  }
}
