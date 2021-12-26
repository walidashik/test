import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String name;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pop();
          onTap?.call();
        },
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 20, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                name,
                style: const TextStyle(
                  color: Color(0XFF2D2D2D),
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 16,
              ),
            ],
          ),
        ));
  }
}
