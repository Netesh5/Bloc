// import 'package:blocapp/view/signin/cubit/signup_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SignUpCubit extends Cubit<SignupStateCubit> {
//   SignUpCubit() : super(SignupInitialCubit()) {
//     if (RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
//             .hasMatch(event.email) ==
//         false) {
//       emit(SignupUnSuccessfullCubitState("Enter a valid email"));
//     } else if (event.password == "" || event.password.length < 6) {
//       emit(SignInUnsuccessfullState(errorMsg: "Enter a valid password"));
//     } else {
//       emit(SignInValidState());
//     }
//   }
// }
