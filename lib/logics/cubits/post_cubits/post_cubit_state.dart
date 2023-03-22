import 'package:blocapp/data/models/post_model.dart';

abstract class PostState {}

class PostInititalState extends PostState {}

class PostLoadingState extends PostState {}

class PostSuccessfullState extends PostState {
  PostSuccessfullState(this.posts);
  List<PostModel> posts;
}

class PostErrorState extends PostState {
  final String errorMsg;
  PostErrorState(this.errorMsg);
}
