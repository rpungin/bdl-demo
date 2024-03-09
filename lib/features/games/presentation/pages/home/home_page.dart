import 'package:bdl_demo/core/presentation/widgets/page_background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [PageBackground()],
    );
  }
}
