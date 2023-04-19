import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';

part 'test_lists.freezed.dart';

@freezed
class TestLists with _$TestLists {
  const factory TestLists({
    required final List<TestInfo> myOwn,
    required final List<TestInfo> my,
  }) = _TestLists;
}
