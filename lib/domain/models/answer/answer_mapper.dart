import 'package:pro_tests/data/model/answer/answer.dart' as data;
import 'package:pro_tests/domain/models/answer/answer.dart';

class AnswerMapper {
  static Answer fromBackend(data.Answer ans) {
    return Answer(title: ans.title, answer: ans.answer, right: ans.right!);
  }

  static data.Answer fromDomain(Answer ans) {
    return data.Answer(title: ans.title, answer: ans.answer);
  }
}
