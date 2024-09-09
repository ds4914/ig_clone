import 'package:flutter_bloc/flutter_bloc.dart';
part 'tab_event.dart';

part 'tab_state.dart';

class TabBloc extends Bloc<TabEvent, TabInitial> {
  TabBloc() : super(TabInitial(0)) {
    on<TabChange>((event, emit) {
      emit(TabInitial(event.index));
    });
  }
}
