enum AppRoutes {
  splash('splash'),
  auth('auth'),
  passedTest('passedTests'),
  addTest('addTest'),
  attemptTest('attemptTest'),
  testResults('testResults'),
  myTest('myTests'),
  createTest('createTest'),
  editTest('editTest'),
  shareTest('shareTest'),
  testDetails('testDetails');

  final String routeName;

  const AppRoutes(this.routeName);
}
