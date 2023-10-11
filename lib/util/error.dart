import 'package:dio/dio.dart';

abstract class Failuer {
  final String erroMessage;

  const  Failuer(this.erroMessage);
}

class ServerFailuer extends Failuer {
   ServerFailuer(super.erroMessage);

  factory ServerFailuer.fromdioerror(DioException dioError) {
    switch (dioError.type) {
      case DioException.connectionTimeout:
        return ServerFailuer('Conection timeoute APi server');
      case DioException.sendTimeout:
        return ServerFailuer('Send timeoute APi server');
      case DioException.receiveTimeout:
        return ServerFailuer('Recived timeoute APi server');
      case DioException.requestCancelled:
      return ServerFailuer('Request to api was cancled');
     
      case DioException.connectionError:
        return ServerFailuer('Please Connect Internet ');
      case DioException.badResponse:
        return ServerFailuer.fromresponse(
            dioError.response!.statusCode!, dioError.response!.data);
      
      default :
       return ServerFailuer('Opps There was an error ,Fixed');
    }
  }
  factory ServerFailuer.fromresponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailuer(response['error']['message']);
    } else if (statuscode == 500) {
      return ServerFailuer('Internal Server, try later');
    } else if (statuscode == 404) {
      return ServerFailuer('Your request not found , please try again ');
    } else {
      return ServerFailuer('Opps There was an error ,Fixed');
    }
  }
}
