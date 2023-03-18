import 'package:flutter_bloc/flutter_bloc.dart';

class SigninScreenCubit extends Cubit<int> {
  SigninScreenCubit() : super(0);
  void increment() => emit(state + 1);
}
