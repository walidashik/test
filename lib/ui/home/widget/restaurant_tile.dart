import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_project/network/model/restaurants.dart';

class RestaurantTile extends StatelessWidget {
  const RestaurantTile({
    Key? key,
    required this.restaurant,
    this.onTap,
  }) : super(key: key);

  final Restaurant? restaurant;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Container(
            height: 180,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 80, right: 20),
            padding: const EdgeInsets.only(left: 90),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurant?.name ?? '',
                  style: const TextStyle(
                    color: Color(0XFF2A2E43),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                RatingBar.builder(
                  itemSize: 16,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  tapOnlyMode: false,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                imageUrl: restaurant?.logo ?? '',
                height: 140,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: 4,
              right: 20,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Color(0XFFFF5E99),
                ),
              ))
        ],
      ),
    );
  }
}
