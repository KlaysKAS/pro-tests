class UserCredentials{

  final String login;
  final String passHash;

  final Map<String, String> extraParams;

  const UserCredentials({
    required this.login,
    required this.passHash,
    this.extraParams = const <String, String>{},
  });

}