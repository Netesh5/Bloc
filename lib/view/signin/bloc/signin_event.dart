abstract class SigninEvent {}

class TextFormFieldChangedEvent extends SigninEvent {
  String email;
  String password;
  TextFormFieldChangedEvent({required this.email, required this.password});
}

class SignInButtonPressedEvent extends SigninEvent {
  String email;
  String password;
  SignInButtonPressedEvent({required this.email, required this.password});
}
