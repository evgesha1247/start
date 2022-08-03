import 'package:bloc/bloc.dart';
import 'package:text/domain/object/card.dart';

abstract class ObjCardEvent {}

class EventGoToCurrent implements ObjCardEvent {}

class EventGoToPast implements ObjCardEvent {}

class ObjCardBloc extends Bloc<ObjCardEvent, ObjCart> {
  ObjCardBloc() : super(ObjCart(config: ObjCartStatus.current)) {
    on<EventGoToPast>((event, emit) {
      emit(ObjCart(config: ObjCartStatus.past));
    });
    on<EventGoToCurrent>((event, emit) {
      emit(ObjCart(config: ObjCartStatus.current));
    });
  }
}
