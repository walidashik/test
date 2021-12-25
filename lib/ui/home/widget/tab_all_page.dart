import 'package:flutter/material.dart';
import 'package:test_project/core/constant.dart';
import 'package:test_project/network/apiservice/api_provider.dart';
import 'package:test_project/network/model/restaurants.dart';
import 'package:test_project/ui/home/widget/restaurant_tile.dart';
import 'package:get/get.dart';

class TabAllPage extends StatefulWidget {
  const TabAllPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TabAllPage> createState() => _TabAllPageState();
}

class _TabAllPageState extends State<TabAllPage> {
  late ApiProvider apiProvider;
  var restaurantCount = 0;
  final placeName = '';

  @override
  void initState() {
    super.initState();
    apiProvider = ApiProvider();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Restaurants>(
      future: apiProvider.fetchRestaurants(placeId: Constant.kPlaceId),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          restaurantCount = snapshot.data?.restaurants?.length ?? 0;
          return ListView.separated(
              itemCount: snapshot.data?.restaurants?.length ?? 0,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16,);
              },
              itemBuilder: (context, index) {
                return RestaurantTile(
                  restaurant: snapshot.data?.restaurants?[index],
                  onTap: () {},
                );
              });
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
