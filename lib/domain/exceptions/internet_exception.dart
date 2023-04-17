import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_exception.freezed.dart';

@freezed
class InternetException with _$InternetException {
  const factory InternetException.noAccount() = NoAccount;

  const factory InternetException.loginAlreadyExist() = LoginAlreadyExist;

  const factory InternetException.badConnection() = BadConnection;

  const factory InternetException.somethingWentWrong() = SomethingWentWrong;
}
