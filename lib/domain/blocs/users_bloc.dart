import 'package:bloc/bloc.dart';
import 'package:text/domain/object/user.dart';

abstract class UserEvent {}

class UserIncEvent implements UserEvent {}

class UserDecEvent implements UserEvent {}

class UserBloc extends Bloc<UserEvent, MyObject> {
  UserBloc() : super(MyObject(config: ObjectState.current)) {
    on<UserIncEvent>((event, emit) {
      emit(MyObject(config: ObjectState.past));
    });
    on<UserDecEvent>((event, emit) {
      emit(MyObject(config: ObjectState.current));
    });
  }
}
