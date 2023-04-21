import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_info.g.dart';

@JsonSerializable()
class TestInfo {
  final int id;
  final String title;
  final String description;
  final String author;

  TestInfo(this.id, this.title, this.description, this.author);

  factory TestInfo.fromJson(Map<String, dynamic> json) => _$TestInfoFromJson(json);
}
