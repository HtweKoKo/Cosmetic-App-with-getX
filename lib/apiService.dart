
import 'package:dio/dio.dart';

import 'models/MakeUpModel.dart';

const base_url =
    "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";

class MakeupApiService {
  Dio dio = Dio();

  Future<List<MakeUpModel>> getAllPost() async {
    var getlink = await dio.get(base_url);
  
    var linkdata = getlink.data as List;

    var aa = linkdata.map((e) => MakeUpModel.fromJson(e)).toList();
    
    return aa;
  }
  
  
}
