import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ulearning_bloc/pages/welcome/bloc/welcome_events.dart';
import 'package:flutter_ulearning_bloc/pages/welcome/bloc/welcome_states.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() :super(WelcomeState()) {
    on<WelcomeEvent>((events, emit) {
      emit(WelcomeState(page: state.page));
    });
  }


}