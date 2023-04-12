abstract class TestCreationRepository{

  TestInfo createTest(String name, String description);

  TestInfo addQuestion(String testId, Question question);

  List<TestInfo> getUsersTests(String userId);

  String deleteTest(String testId);

}