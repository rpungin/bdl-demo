import 'package:bdl_demo/core/presentation/widgets/activity_indicator.dart';
import 'package:bdl_demo/core/presentation/widgets/error_view.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/providers/schedule_provider.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScheduleView extends ConsumerStatefulWidget {
  const ScheduleView({Key? key}) : super(key: key);
  @override
  ConsumerState createState() => _ScheduleViewState();
}

class _ScheduleViewState extends ConsumerState<ScheduleView> {
  @override
  void initState() {
    ref
        .read(scheduleProvider.notifier)
        .getSchedule(upcomingGamesOnly: false, forceCacheRefresh: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final schedule = ref.watch(scheduleProvider);
    return schedule.when(
        data: (data) => CalendarView(games: data),
        error: (error, stackTrace) => ErrorView(error),
        loading: () => const ActivityIndicator());
  }
}
