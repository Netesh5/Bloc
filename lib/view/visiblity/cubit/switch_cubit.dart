import 'package:blocapp/view/visiblity/cubit/switch_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchCubit extends Cubit<SwitchStateCubit> {
  SwitchCubit() : super(SwitchInititalStateCubit());

  void switchedOn() => emit(SwitchOnStateCubit());
  void switchedOff() => emit(SwitchOffStateCubit());
}
