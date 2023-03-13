import 'dart:async';

import 'package:blocapp/blocs/internet_bloc/internet_event.dart';
import 'package:blocapp/blocs/internet_bloc/internet_state.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final Connectivity _connectivity = Connectivity();

//we have create streamSubscription because the listen property doesnot close automaticlly.so, to close it we need to assign to streamSubscription
  StreamSubscription? connectivitySubscription;

  InternetBloc() : super(InternetInitialState()) {
    on<InternetOnEvent>((event, emit) => emit(InternetOnState()));
    on<InternetOffEvent>((event, emit) => emit(InternetOffState()));
    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        add(InternetOnEvent());
      } else {
        add(InternetOffEvent());
      }
    });
  }
  @override
  Future<void> close() {
    connectivitySubscription?.cancel();
    return super.close();
  }
}
