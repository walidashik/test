import 'package:flutter/foundation.dart';
import 'package:test_project/network/apiservice/restaurants_provider.dart';
import 'package:test_project/network/model/restaurants.dart';

class ApiProvider {
  late RestaurantsProvider restaurantProvider;

  ApiProvider() {
    restaurantProvider = RestaurantsProvider();
  }

  Future<Restaurants> fetchRestaurants({
    required String placeId,
    String? order,
    String? filter,
  }) async {
    try {
      final response = await restaurantProvider.getRestaurants(
        placeId: placeId,
        order: order,
        filter: filter,
      );

      debugPrint('response: ${response.bodyString} ');

      if (response.statusCode == 200) {
        print('ta called');
        final restaurants = restaurantsFromJson(response.bodyString.toString());
        print('nah called');
        debugPrint(restaurants.restaurants?.length.toString());
        return restaurants;
      } else {
        final restaurants = Restaurants(
          restaurants: [],
          tags: [],
          pagination: null,
        );
        return restaurants;
      }
    } catch (e) {
      final restaurants = Restaurants(
        restaurants: [],
        tags: [],
        pagination: null,
      );
      return restaurants;
    }
  }
}
