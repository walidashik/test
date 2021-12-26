import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_project/core/color.dart';
import 'package:test_project/ui/home/widget/app_drawer.dart';
import 'package:test_project/ui/home/widget/tab_all_page.dart';
import 'package:test_project/ui/home/widget/search_view.dart';
import 'package:test_project/ui/home/widget/tab_page.dart';
import 'package:test_project/ui/home/widget/user_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _searchController;
  final _tagLength = 10;
  final _deliveringLocation = 'NEWMARKT 14';
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  void initState() {
    super.initState();
    _changeStatusBarColor();
    _tabController = TabController(
      initialIndex: 0,
      length: _tagLength + 1,
      vsync: this,
    );
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: const AppDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 280.0,
              floating: true,
              pinned: true,
              backgroundColor: const Color(0XFFF7F7F7),
              actions: <Widget>[Container()],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: AppColor.primary,
                  margin: const EdgeInsets.only(bottom: 48),
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: Column(
                    children: [
                      _buildVerticalSpace(40),
                      _buildHeaderRow(),
                      _buildVerticalSpace(20),
                      const Text(
                        'Yummy Food?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _buildVerticalSpace(20),
                      SearchView(controller: _searchController),
                    ],
                  ),
                ),
              ),
              bottom: TabBar(
                  indicatorColor: Colors.black,
                  labelPadding: const EdgeInsets.only(
                    bottom: 16,
                    left: 10,
                    right: 10,
                  ),
                  labelStyle: const TextStyle(
                    color: Color(0XFFA3A3A4),
                  ),
                  unselectedLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  isScrollable: true,
                  controller: _tabController,
                  tabs: _getTabs()),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: _getTabPages(),
        ),
      ),
    );
  }

  SizedBox _buildVerticalSpace(double height) {
    return SizedBox(
      height: height,
    );
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

  List<Widget> _getTabs() {
    final tabs = <Widget>[];
    tabs.add(const Text('All'));
    for (var i = 1; i <= _tagLength; i++) {
      tabs.add(Text('Tag $i'));
    }
    return tabs;
  }

  List<Widget> _getTabPages() {
    final tabs = <Widget>[];
    tabs.add(const TabAllPage());
    for (var i = 1; i <= _tagLength; i++) {
      tabs.add(Text('Tag $i'));
    }
    return tabs;
  }

  Widget _buildHeaderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildLocationView(),
        const Spacer(),
        UserIcon(
          onTap: () {
            debugPrint('called');
            _key.currentState!.openEndDrawer();
          }
        ),
      ],
    );
  }

  Widget _buildLocationView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('DELIVERING TO',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            )),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              _deliveringLocation.toUpperCase(),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              width: 12,
            ),
            const FaIcon(
              FontAwesomeIcons.chevronDown,
              size: 14,
            )
          ],
        )
      ],
    );
  }
}
