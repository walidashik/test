import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({
    Key? key,
    required this.pageName,
  }) : super(key: key);
  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      pageName,
    ));
  }
}
