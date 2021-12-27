import 'package:flutter/material.dart';
import 'package:test_project/core/color.dart';

class AddNewAddressButton extends StatelessWidget {
  const AddNewAddressButton({
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
        height: 50,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(0, 0.2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Add New Address',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Icon(
              Icons.add,
              color: Colors.white,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
