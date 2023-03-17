import 'package:blocapp/view/signin/bloc/signin_event.dart';
import 'package:blocapp/view/signin/bloc/signin_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SigninEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {
    on<TextFormFieldChangedEvent>((event, emit) {
      if (RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
              .hasMatch(event.email) ==
          false) {
        emit(SignInUnsuccessfullState(errorMsg: "Enter a valid email"));
      } else if (event.password == "" || event.password.length < 6) {
        emit(SignInUnsuccessfullState(errorMsg: "Enter a valid password"));
      } else {
        emit(SignInValidState());
      }
    });
    on<SignInButtonPressedEvent>((event, emit) {
      emit(SignInSuccessfulState());
    });
  }
}
