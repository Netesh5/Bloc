import 'dart:math';

import 'package:blocapp/blocs/internet_bloc/internet_event.dart';
import 'package:blocapp/blocs/internet_bloc/internet_state.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  Connectivity _connectivity = Connectivity();
  InternetBloc() : super(InternetInitialState()) {
    on<InternetOnEvent>((event, emit) => emit(InternetOnState()));
    on<InternetOffEvent>((event, emit) => emit(InternetOffState()));
    _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        add(InternetOnEvent());
      } else {
        add(InternetOnEvent());
      }
    });
  }
}
