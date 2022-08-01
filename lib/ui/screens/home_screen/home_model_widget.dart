import '../../../domain/object/user.dart';

class UserService {
  var _user = User(0);
  User get user => _user;

  void userAgeInc() async {
    _user = _user.copyWith(age: _user.age + 1);
  }

  void userAgeDec() async {
    _user = _user.copyWith(age: _user.age - 1);
  }
}
