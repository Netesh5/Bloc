import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreenCubit extends Cubit<int> {
  SignupScreenCubit() : super(0);
  void increment() => emit(state + 1);
}
