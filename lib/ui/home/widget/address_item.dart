import 'package:flutter/material.dart';
import 'package:test_project/network/model/address.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({
    Key? key,
    required this.address,
    required this.index,
  }) : super(key: key);
  final Address address;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 60,
          decoration: BoxDecoration(
            color: getColor(index).withOpacity(0.2),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Center(
            child: Icon(
              getIcon(index),
              color: getColor(index),
              size: 24,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              address.title,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              width: 18,
            ),
            Text(
              address.address,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Color getColor(int index) {
    var color = const Color(0XFF503E9D);
    if (index == 0) {
      color = const Color(0XFFFACD5D);
    } else if (index == 1) {
      color = const Color(0XFF503E9D);
    } else {
      color = Colors.teal;
    }
    return color;
  }

  IconData getIcon(int index) {
    if (address.title.toLowerCase() == 'home') {
      return Icons.home_filled;
    } else if (address.title.toLowerCase() == 'work') {
      return Icons.work;
    }
    return Icons.place_rounded;
  }
}
