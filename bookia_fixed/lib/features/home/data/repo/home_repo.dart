import 'dart:math';

import 'package:bookia/features/home/data/models/bestsaller/bestsaller.dart';
import 'package:bookia/features/home/data/models/slider_model/slider_model.dart';
import 'package:bookia/services/dio/endpoint.dart';
import 'package:bookia/services/dio/provider.dart';

class HomeRepo {
  Future<Bestsaller?> getbestSellers() async {
    try {
      var res = await DioProvider.get(path: Endpoint.bestSellers);

      if (res.statusCode == 200) {
        return Bestsaller.fromjson(res.data);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString() as num);
      return null;
    }
  }

  Future<SliderModel?> getslider() async {
    try {
      var res = await DioProvider.get(path: Endpoint.slider);

      if (res.statusCode == 200) {
        return SliderModel.fromJson(res.data);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString() as num);
      return null;
    }
  }
}
