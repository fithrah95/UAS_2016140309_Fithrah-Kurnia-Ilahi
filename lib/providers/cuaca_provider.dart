import 'package:cuaca/models/cuaca_model.dart';
import 'package:cuaca/services/cuaca_service.dart';
import 'package:flutter/cupertino.dart';

class CuacaProvider extends ChangeNotifier{
  final CuacaService _CuacaService = CuacaService();
  cuacamodel cuacaModel;

  final TextEditingController txtSearch = TextEditingController();

  beginSearchUser({String value})async{
    print(value);
   cuacaModel = await _CuacaService.searchUser(search: txtSearch.text);
   print(cuacaModel.items.first.login);
   notifyListeners();
  }
}