import 'package:bdl_demo/features/games/presentation/pages/schedule/schedule_view.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: SafeArea(
      child: ScheduleView(),
    ));
  }
}
