import 'package:blocapp/cubit/internet_cubit.dart';
import 'package:blocapp/view/signin/bloc/signin_bloc.dart';
import 'package:blocapp/view/signin/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => SignInBloc(),
          child: SigninScreen(),
        ),
      ),
    );
  }
}
