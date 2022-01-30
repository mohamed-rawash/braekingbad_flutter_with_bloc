import 'package:breaking_flutter/uitls/constance/strings.dart';
import 'package:dio/dio.dart';


class CharactersWebServices {
  late Dio dio;
  CharactersWebServices(){
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: 20000,
        receiveTimeout: 20000,
      ),
    );
  }

  Future<List<dynamic>> getAllCharacters() async {
    late Response response;
    try {
      response = await dio.get(charactersEndPoint);
      print(response.data[0].toString());
    }catch(e) {
      print(e.toString());
      return [];
    }
    return response.data;
  }
}