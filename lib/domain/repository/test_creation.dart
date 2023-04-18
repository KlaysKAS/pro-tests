abstract class TestCreationRepository {
  // ignore: undefined_class
  TestInfo createTest(String name, String description);

  // ignore: undefined_class
  TestInfo addQuestion(String testId, Question question);

// ignore: non_type_as_type_argument
  List<TestInfo> getUsersTests(String userId);

  String deleteTest(String testId);
}
