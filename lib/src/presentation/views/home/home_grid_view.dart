
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/assets/assets.gen.dart';

class HomeMenuGridView extends StatefulWidget {
  const HomeMenuGridView({super.key});

  @override
  State<HomeMenuGridView> createState() => _HomeMenuGridViewState();
}

class _HomeMenuGridViewState extends State<HomeMenuGridView> {
  @override
  Widget build(BuildContext context) {
    final kListMenu = [
      HomeMenu(
        image: Assets.icons.iconProduk.path,
        label: 'Produk',
        onTap: () {
          // Navigator.pushNamed(context, ProductListPage.routeName);
          //     .then((_) => {setState(() {})});
        },
      ),
      HomeMenu(
        image: Assets.icons.iconTagihan.path,
        label: 'Tagihan',
        onTap: () {
          // Navigator.pushNamed(context, MenuTagihanPage.routeName);
        },
      ),
      HomeMenu(
        image: Assets.icons.iconSetor.path,
        label: 'Setor Tunai',
        onTap: () {
          // Navigator.pushNamed(context, ListSetoranPage.routeName);
        },
      ),
      HomeMenu(
        image: Assets.icons.iconTarget.path,
        label: 'Target',
        onTap: () {
          // Navigator.pushNamed(context, TargetPage.routeName);
        },
      ),
    ];

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;
        const paddingWidth = 20 * 2;
        const cellSpace = 8 * 4;
        final cellSize = (maxWidth - paddingWidth - cellSpace) / 4;

        final grid = GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisExtent: cellSize + 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return kListMenu[index];
          },
          itemCount: kListMenu.length,
        );

        return MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          child: grid,
        );
      },
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({
    super.key,
    required this.label,
    required this.image,
    required this.onTap,
  });

  final String label;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          onTap: onTap,
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  offset: Offset.zero,
                  blurRadius: 10,
                  color: Colors.black12,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, width: 30, height: 30),
                // SvgPicture.asset(
                //   image,
                //   width: 40,
                //   height: 40,
                // ),
                SizedBox(
                  height: 2,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 10.sp),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
