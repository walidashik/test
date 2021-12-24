import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/color.dart';
import 'package:test_project/ui/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: AppColor.primary,
        errorColor: AppColor.error,
      ),
      home: const HomePage(),
    );
  }
}
