abstract class SignupStateCubit {}

abstract class SignupInitialCubit {}

class SignupSuccessfullCubitState extends SignupStateCubit {}

class SignupUnSuccessfullCubitState extends SignupStateCubit {
  String? errorMsg;
  SignupUnSuccessfullCubitState(this.errorMsg);
}
