import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ulearning_bloc/pages/application/bloc/app_states.dart';

import 'app_events.dart';

class AppBloc extends Bloc<AppEvent,AppState>{
    AppBloc():super(const AppState()){
      on<TriggerAppEvent>((event,emit){
        emit(AppState(index: event.index));
      });
    }
}