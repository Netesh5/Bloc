import 'dart:async';
import 'package:blocapp/cubit/internet_state.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetCubit extends Cubit<InternetStateCubit> {
  Connectivity connectivity = Connectivity();
  StreamSubscription? streamSubscription;
  InternetCubit() : super(InternetInitialStateCubit()) {
    streamSubscription = connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        emit(InternetStateOnCubit());
      } else {
        emit(InternetStateOffCubit());
      }
    });
  }
  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
