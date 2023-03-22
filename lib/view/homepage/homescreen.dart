import 'package:blocapp/data/models/post_model.dart';
import 'package:blocapp/logics/cubits/post_cubits/post_cubit.dart';
import 'package:blocapp/logics/cubits/post_cubits/post_cubit_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: BlocConsumer<PostCubit, PostState>(listener: (context, state) {
        if (state is PostErrorState) {
          SnackBar snackBar = SnackBar(
            content: Text(state.errorMsg),
            backgroundColor: Colors.red,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }, builder: ((context, state) {
        if (state is PostLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is PostSuccessfullState) {
          return ListView.separated(
              itemBuilder: ((context, index) {
                PostModel post = state.posts[index];
                return ListTile(
                  title: Text(post.title.toString()),
                  subtitle: Text(post.body.toString()),
                );
              }),
              separatorBuilder: ((context, index) {
                return const Divider(
                  thickness: 1,
                );
              }),
              itemCount: state.posts.length);
        }
        return const Center(
          child: Text("Something went wrong"),
        );
      })),
    );
  }
}
