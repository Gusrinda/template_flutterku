import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/assets/assets.gen.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key, this.width = 200}) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: Assets.icons.icon.keyName,
                child: Assets.icons.icon.image(width: width),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Template Apps',
                style: GoogleFonts.pacifico(
                  textStyle: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
