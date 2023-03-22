import 'package:blocapp/data/models/post_model.dart';
import 'package:blocapp/logics/cubits/post_cubits/post_cubit_state.dart';
import 'package:blocapp/repository/post_respository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInititalState()) {
    fetchPost();
  }
  PostRepository repository = PostRepository();
  void fetchPost() async {
    try {
      List<PostModel> data = await repository.fetchPost();
      emit(PostSuccessfullState(data));
    } on DioError catch (e) {
      if (e.type == DioErrorType.unknown) {
        emit(PostErrorState("Something went wrong"));
      } else {
        emit(PostErrorState(e.type.toString()));
      }
    }
  }
}
