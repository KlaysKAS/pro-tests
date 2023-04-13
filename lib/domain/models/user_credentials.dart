class UserCredentials{

  final String username;
  final String password;
  final String? firstname;
  final String? lastname;

  const UserCredentials({
    required this.username,
    required this.password,
    this.firstname,
    this.lastname,
  });

}