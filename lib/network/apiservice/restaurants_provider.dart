import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:test_project/core/constant.dart';

class RestaurantsProvider extends GetConnect {
  Future<Response> getRestaurants({
    required String placeId,
    String? filters,
    String? order,
    String? filter,
  }) {
    // debugPrint(
    //     'url: ${Constant.kBaseUrl}/restaurants?place_id=$placeId');

    return get(
      '${Constant.kBaseUrl}/restaurants?place_id=$placeId',
      headers: {
        'Accept': 'application/json',
        'headerToken': 'testheadertoken',
      },
    );
  }
}
