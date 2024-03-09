import 'dart:ui';

import 'package:flutter/material.dart';

class PageBackground extends StatelessWidget {
  const PageBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Image.asset(
      "assets/images/wallpaper_02.png",
      fit: BoxFit.cover,
    ));
  }
}

class BlurredPageBackground extends StatelessWidget {
  const BlurredPageBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage("assets/images/wallpaper_02.png"),
                fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),
        ),
      ),
    );
  }
}
