import 'package:dio/dio.dart';

import 'package:cuaca/models/cuaca_model.dart';

class CuacaService{
  Future<cuacamodel> searchUser({String search}) async {
    Response response = await Dio().get('https://api.openweathermap.org/data/2.5/weather?q=${search}&appid=421c2df21def91b0bc0c98591b308f44');
    return cuacamodel.fromJson(response.data);
  }
}