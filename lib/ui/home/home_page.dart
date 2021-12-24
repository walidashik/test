import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_project/core/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _changeStatusBarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void _changeStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: AppColor.primary,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
}
