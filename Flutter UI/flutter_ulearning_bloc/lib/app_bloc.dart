import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ulearning_bloc/app_event.dart';
import 'package:flutter_ulearning_bloc/app_state.dart';

class AppBlocs extends Bloc<AppEvent, AppState>{
  AppBlocs() : super(InitStates()){
    on<Increment>((event, emit){
      emit(AppState(counter: state.counter+1));
    });

    on<Decrement>((event, emit){
      emit(AppState(counter: state.counter-1));
    });
  }

}