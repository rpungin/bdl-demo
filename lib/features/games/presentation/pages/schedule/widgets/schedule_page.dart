import 'package:bdl_demo/core/presentation/widgets/page_background.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/schedule_view.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          PageBackground(),
          ScheduleView(),
        ],
      ),
    ));
  }
}
