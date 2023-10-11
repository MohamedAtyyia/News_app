import 'package:dio/dio.dart';
import 'package:news_app/util/app_const.dart';

class ApiService{
  static late Dio dio;
  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: AppConst.baseurl,
        receiveDataWhenStatusError: true
      )
    );
  }

  Future<Response>get({required String method ,required Map<String,dynamic> query})async{
  return await dio.get(method,
    queryParameters: query
    );
 //   return response;
  }
}