import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro_tests/data/model/author/author.dart';

part 'test_info.freezed.dart';

part 'test_info.g.dart';

@freezed
class TestInfo with _$TestInfo {
  const factory TestInfo({
    final int? id,
    required String title,
    required String description,
    final Author? author,
  }) = _TestInfo;

  factory TestInfo.fromJson(Map<String, dynamic> json) => _$TestInfoFromJson(json);
}
