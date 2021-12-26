import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_project/core/color.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({Key? key, this.onTap, this.height = 50, this.width = 50})
      : super(key: key);
  final Function()? onTap;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onTap?.call();
        },
        splashColor: AppColor.primary,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0XFF78849E), width: 2),
              color: Colors.white,
            ),
            child: Center(
                child: FaIcon(
              FontAwesomeIcons.user,
              color: Colors.black.withOpacity(0.5),
              size: 22,
            )),
          ),
        ));
  }
}
