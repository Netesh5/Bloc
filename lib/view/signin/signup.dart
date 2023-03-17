import 'package:blocapp/view/homepage.dart';
import 'package:blocapp/view/signin/bloc/signin_bloc.dart';
import 'package:blocapp/view/signin/bloc/signin_event.dart';
import 'package:blocapp/view/signin/bloc/signin_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Sign up",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: "Enter your Email"),
              onChanged: (value) {
                BlocProvider.of<SignInBloc>(context).add(
                    TextFormFieldChangedEvent(
                        email: emailController.text,
                        password: passwordController.text));
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: passwordController,
              decoration:
                  const InputDecoration(hintText: "Enter your password"),
              onChanged: (value) {
                BlocProvider.of<SignInBloc>(context).add(
                    TextFormFieldChangedEvent(
                        email: emailController.text,
                        password: passwordController.text));
              },
            ),
            BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                if (state is SignInUnsuccessfullState) {
                  return Text(
                    state.errorMsg!,
                    style: const TextStyle(color: Colors.red),
                  );
                } else {
                  return Container();
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                return CupertinoButton(
                    color: Colors.green,
                    onPressed: (state is SignInUnsuccessfullState)
                        ? null
                        : () {
                            if (state is SignInValidState) {
                              BlocProvider.of<SignInBloc>(context).add(
                                  SignInButtonPressedEvent(
                                      email: emailController.text,
                                      password: passwordController.text));

                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const HomeScreen())));
                            }
                          },
                    child: const Text("Signup"));
              },
            )
          ],
        ),
      )),
    );
  }
}
