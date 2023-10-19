import 'dart:async';

import 'package:becca_supir/main.dart';
import 'package:becca_supir/src/core/config/constant.dart';
import 'package:becca_supir/src/presentation/views/home/home_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/config/theme_colors.dart';
import '../../widgets/bottom_app_bar.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/dashboard';

  const DashboardPage({super.key, this.page});

  final Stream<int>? page;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final pageController = PageController();

  int? isSelectedStream;

  void changePageDirectly(int index) {
    setState(() {
      pageController.jumpToPage(index);
    });
  }

  @override
  void initState() {
    super.initState();

    widget.page?.listen((event) {
      isSelectedStream = event;
      changePageDirectly(event);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _body() {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        HomePage(),
        HomePage(),
        HomePage(),
        HomePage(),
      ],
    );
  }

  CustomBottomAppBar _bottomNavigationBar() {
    return CustomBottomAppBar(
      notchedShape: const CircularNotchedRectangle(),
      onTap: (page) {
        pageSelectController.add(page);
      },
      defaultSelected: isSelectedStream?? 0,
      height: kToolbarHeight,
      backgroundColor: Colors.white,
      selectedItemColor: themeOrange,
      unselectedItemColor: ThemeColors.grey4,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      items: [
        CustomBottomAppBarItem(
          icon: Assets.material.home,
          text: "Home",
        ),
        CustomBottomAppBarItem(
          icon: Assets.material.history,
          text: "Page 2",
        ),
        CustomBottomAppBarItem(
          icon: Assets.material.bell,
          text: "Page 3",
        ),
        CustomBottomAppBarItem(
          icon: Assets.material.user,
          text: "Page 4",
        ),
      ],
    );
  }
}