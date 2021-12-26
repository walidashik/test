import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Container(
          height: 180,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 80, right: 20),
          padding: const EdgeInsets.only(left: 90),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 0.5), // changes position of shadow
              ),
            ],
          ),
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
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                restaurant?.tags ?? 'No tags found',
                style: const TextStyle(
                  color: Color(0XFF454F63),
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              _buildOtherDetails(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 0.1), // changes position of shadow
                ),
              ],
            ),
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
    );
  }

  Widget _buildOtherDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const FaIcon(
          FontAwesomeIcons.carAlt,
          size: 16,
          color: Color(0XFF454F63),
        ),
        const Text(
          'Free  |',
          style: TextStyle(
            color: Color(0XFF2A2E43),
            fontSize: 10,
            fontWeight: FontWeight.w300,
          ),
        ),
        const FaIcon(
          FontAwesomeIcons.handPaper,
          size: 16,
          color: Color(0XFF454F63),
        ),
        Text(
          '${restaurant?.deliveryArea?.deliveryTime} min  |',
          style: const TextStyle(
            color: Color(0XFF2A2E43),
            fontSize: 10,
            fontWeight: FontWeight.w300,
          ),
        ),
        const FaIcon(
          FontAwesomeIcons.shoppingBag,
          size: 16,
          color: Color(0XFF454F63),
        ),
        Text(
          '${restaurant?.deliveryArea?.deliveryTime} min',
          style: const TextStyle(
            color: Color(0XFF2A2E43),
            fontSize: 10,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
