import 'package:bloc/bloc.dart';
import 'package:text/domain/object/user.dart';

abstract class UserEvent {}

class UserIncEvent implements UserEvent {}

class UserDecEvent implements UserEvent {}

class UserBloc extends Bloc<UserEvent, MyObject> {
  UserBloc() : super(MyObject(atribut: "current ", config: UserState.current)) {
    on<UserIncEvent>((event, emit) {
      emit(MyObject(atribut: 'bydyshie', config: UserState.bydyshie));
    });
    on<UserDecEvent>((event, emit) {
      emit(MyObject(atribut: 'proshloe', config: UserState.proshloe));
    });
  }
}
