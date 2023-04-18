enum AppRoutes {
  splash('splash'),
  auth('auth'),
  home('home'),
  addTest('addTest'),
  attemptTest('attemptTest'),
  testResults('testResults'),
  createTest('createTest'),
  editTest('editTest'),
  shareTest('shareTest'),
  testDetails('testDetails');

  final String routeName;

  const AppRoutes(this.routeName);
}
