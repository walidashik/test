import 'package:flutter/material.dart';
import 'package:test_project/ui/home/widget/user_icon.dart';

class DrawerLoginButton extends StatelessWidget {
  const DrawerLoginButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 12, top: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const UserIcon(
              height: 50,
              width: 50,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'WELCOME',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'LOGIN FROM HERE',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: 60,
              width: 40,
              decoration: BoxDecoration(
                color: const Color(0XFF2D2D2D).withOpacity(0.2),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
