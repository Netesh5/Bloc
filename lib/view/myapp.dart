import 'package:blocapp/routes/routes.dart';
import 'package:blocapp/routes/routes_name.dart';

import 'package:blocapp/view/visiblity/cubit/switch_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SwitchCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.onGenerateRoutes,
        initialRoute: RoutesName.visibilty,
      ),
    );
  }
}
