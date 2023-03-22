import 'package:blocapp/data/models/post_model.dart';
import 'package:blocapp/repository/api/api.dart';
import 'package:dio/dio.dart';

class PostRepository {
  API api = API();

  Future<List<PostModel>> fetchPost() async {
    try {
      Response response = await api.sendRequest.get("/posts");

      List<dynamic> postMaps = response.data;
      return postMaps.map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
