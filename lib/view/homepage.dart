import 'package:blocapp/blocs/internet_bloc/internet_bloc.dart';
import 'package:blocapp/blocs/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLoC"),
      ),
      body: SafeArea(
          child: Center(
              child: BlocConsumer<InternetBloc, InternetState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is InternetOnState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Icon(Icons.wifi), Text("Internet On")],
            );
          } else if (state is InternetOffState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.wifi_off_outlined),
                Text("Internet Off")
              ],
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text("Loading...")],
            );
          }
        },
      )
              //     BlocBuilder<InternetBloc, InternetState>(builder: (context, state) {
              //   if (state is InternetOnState) {
              //     return Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [Icon(Icons.wifi), Text("Internet On")],
              //     );
              //   } else if (state is InternetOffState) {
              //     return Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         Icon(Icons.wifi_off_outlined),
              //         Text("Internet Off")
              //       ],
              //     );
              //   } else {
              //     return Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [Text("Loading...")],
              //     );
              //   }
              // }),
              )),
    );
  }
}
