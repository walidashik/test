import 'package:flutter/material.dart';
import 'package:test_project/core/constant.dart';
import 'package:test_project/network/apiservice/api_provider.dart';
import 'package:test_project/network/model/restaurants.dart';

class TabAllPage extends StatefulWidget {
  const TabAllPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TabAllPage> createState() => _TabAllPageState();
}

class _TabAllPageState extends State<TabAllPage> {
  late ApiProvider apiProvider;

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
      return ListView.builder(
          itemCount: snapshot.data?.restaurants?.length ?? 0,
          itemBuilder: (context, index) {
            return Text(snapshot.data?.restaurants?[index].name ?? '');
          });
    }
    return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
