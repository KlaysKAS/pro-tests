abstract class TestPassingRepository {
  TestResults getResults(String testAttemptId);

  TestResults sendTest(TestAttempt userTestAttempt);

  Test getTest(String testId);
}
