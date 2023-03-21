import 'package:blocapp/routes/routes.dart';
import 'package:blocapp/routes/routes_name.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoutes,
      initialRoute: RoutesName.homeScreen,
    );
  }
}
