import 'package:blocapp/view/visiblity/cubit/switch_cubit.dart';
import 'package:blocapp/view/visiblity/cubit/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomVisibilty extends StatefulWidget {
  CustomVisibilty({Key? key}) : super(key: key);

  @override
  State<CustomVisibilty> createState() => _CustomVisibiltyState();
}

class _CustomVisibiltyState extends State<CustomVisibilty> {
  bool iswitchedOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visibilty"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<SwitchCubit, SwitchStateCubit>(
          builder: (context, state) {
            return Column(
              children: [
                SwitchListTile.adaptive(
                    title: const Text("Block Number"),
                    value: iswitchedOn,
                    onChanged: ((value) {
                      iswitchedOn = !iswitchedOn;
                      if (iswitchedOn == true) {
                        BlocProvider.of<SwitchCubit>(context)
                            .emit(SwitchOnStateCubit());
                      } else {
                        BlocProvider.of<SwitchCubit>(context)
                            .emit(SwitchOffStateCubit());
                      }
                    })),
                Visibility(
                    visible: iswitchedOn,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Numbers to block"),
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
