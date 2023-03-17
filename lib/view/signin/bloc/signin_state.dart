abstract class SignInState {}

class SignInInitialState extends SignInState {}

class SignInSuccessfulState extends SignInState {}

class SignInUnsuccessfullState extends SignInState {
  String? errorMsg;
  SignInUnsuccessfullState({this.errorMsg});
}

class SignInValidState extends SignInState {}
