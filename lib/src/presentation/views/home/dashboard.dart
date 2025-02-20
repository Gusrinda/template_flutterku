import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sulinda_sales/main.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/general/bloc/general_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/home/bloc/homepage_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/calendar/monthly_calendar_view.dart';
import 'package:sulinda_sales/src/presentation/views/home/home_page.dart';
import 'package:sulinda_sales/src/presentation/views/materi/daftar_materi_view.dart';
import 'package:sulinda_sales/src/presentation/views/profile/profile_page.dart';

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
    if (mounted) {
      setState(() {
        pageController.jumpToPage(index);
      });
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.page?.listen((event) {
        isSelectedStream = event;
        changePageDirectly(event);
      });
      context.read<GeneralBloc>().add(FetchDataGeneral());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const _Fab(),
    );
  }

  Widget _body() {
    final authBloc = context.read<AuthBloc>().state;

    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        BlocProvider(
          create: (context) => HomepageBloc(
              userRepository: context.read(),
              visiitngRepository: context.read(),
              soRepository: context.read(),
              tokenUser: authBloc.tokenUser ?? ''),
          child: HomePage(),
        ),
        ProfilePage(),
      ],
    );
  }

  CustomBottomAppBar _bottomNavigationBar() {
    return CustomBottomAppBar(
      notchedShape: const CircularNotchedRectangle(),
      onTap: (page) {
        pageSelectController.add(page);
      },
      defaultSelected: isSelectedStream ?? 0,
      height: kToolbarHeight,
      backgroundColor: Colors.white,
      selectedItemColor: themeHijau,
      unselectedItemColor: ThemeColors.grey4,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      items: [
        CustomBottomAppBarItem(
          icon: Assets.material.home,
          text: "Home",
        ),
        CustomBottomAppBarItem(
          icon: Assets.material.user,
          text: "Profile",
        ),
      ],
    );
  }
}

class _Fab extends StatelessWidget {
  const _Fab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          MonthlyCalendarView.routeName,
        );
      },
      backgroundColor: Colors.white,
      // foregroundColor: Colors.black12,
      child: SvgPicture.asset(
          Assets.svg.materialSymbolsLightLocalCarWashOutlineSharp),
    );
  }
}
