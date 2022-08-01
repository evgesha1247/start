import 'package:bloc/bloc.dart';
import '../object/user.dart';

class UserState {
  final User currentUser;
  const UserState({
    required this.currentUser,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserState &&
          runtimeType == other.runtimeType &&
          currentUser == other.currentUser);
  @override
  int get hashCode => currentUser.hashCode;

  UserState copyWith({
    User? currentUser,
  }) {
    return UserState(
      currentUser: currentUser ?? this.currentUser,
    );
  }
}

abstract class UserEvent {}

class UserIncEvent implements UserEvent {}

class UserDecEvent implements UserEvent {}

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState(currentUser: User(0))) {
    on<UserIncEvent>((event, emit) {
      var user = state.currentUser;
      user = user.copyWith(age: user.age + 1);
      emit(UserState(currentUser: user));
    });
    on<UserDecEvent>((event, emit) {
      var user = state.currentUser;
      user = user.copyWith(age: user.age - 1);
      emit(UserState(currentUser: user));
    });
  }
}
