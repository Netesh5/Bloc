import 'package:blocapp/routes/routes_name.dart';
import 'package:blocapp/screens/cubits/homescreen_cubit.dart';
import 'package:blocapp/screens/cubits/signinscreen_cubit.dart';

import 'package:blocapp/view/homepage.dart';
import 'package:blocapp/view/homepage/homescreen.dart';
import 'package:blocapp/view/signin/signup.dart';
import 'package:blocapp/view/visiblity/visibilty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: ((context) => BlocProvider(
                  create: (context) => HomeScreenCubit(),
                  child: const HomeScreen(),
                )));
      case RoutesName.sigin:
        return MaterialPageRoute(
            builder: ((context) => BlocProvider(
                  create: (context) => SigninScreenCubit(),
                  child: SigninScreen(),
                )));
      case RoutesName.visibilty:
        return MaterialPageRoute(builder: ((context) => CustomVisibilty()));
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: ((context) => const HomePage()));
      default:
        return MaterialPageRoute(builder: ((context) {
          return const Scaffold(
            body: Center(
              child: Text("No Routes Found"),
            ),
          );
        }));
    }
  }
}
