import 'package:flutter/material.dart';
import 'package:test_project/core/color.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      color: AppColor.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
           Text(
            'Liefer Mama',
            style: TextStyle(
              color: Color(0XFF2A2E43),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'einfach essen Bestelen',
            style: TextStyle(
              color: Color(0XFF2A2E43),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
