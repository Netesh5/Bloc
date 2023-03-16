// ignore_for_file: constant_identifier_names

abstract class InternetStateCubit {}

class InternetInitialStateCubit extends InternetStateCubit {}

class InternetStateOnCubit extends InternetStateCubit {}

class InternetStateOffCubit extends InternetStateCubit {}

//If the every classes are empty then we can use enum

enum InternetState { Initial, InternetOn, InternetOff }
