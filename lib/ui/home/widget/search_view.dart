import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      padding: const EdgeInsets.only(top: 2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: TextField(
        controller: controller,
        autofocus: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search for a dish or restaurant',
          hintStyle: const TextStyle(
            color: Color(0XFFD8D8D8),
            fontWeight: FontWeight.w300,
          ),
          prefixIconColor: const Color(0XFF8592AD),
          suffixIconColor: const Color(0XFF8592AD),
          prefixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Color(0XFF8592AD),
            ),
            onPressed: () {},
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: Color(0XFF8592AD),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
