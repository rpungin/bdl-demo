import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/features/games/domain/entities/game.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/calendar_day_cell.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/game_by_date_provider.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/selected_event_provider.dart';
import 'package:bdl_demo/features/games/presentation/pages/schedule/widgets/selected_event_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends ConsumerStatefulWidget {
  final List<Game> games;
  const CalendarView({super.key, required this.games});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CalendarViewState();
}

class _CalendarViewState extends ConsumerState<CalendarView> {
  @override
  void initState() {
    ref.read(gameByDateProvider).setGames(widget.games);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          //const BlurredPageBackground(),
          // Container(
          //   color: Colors.white.withOpacity(0.8),
          // ),
          Padding(
            padding: const EdgeInsets.all(AppTheme.gridSpacing),
            child: Column(
              children: [
                _buildCalendar(context),
                const SelectedEventView(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCalendar(BuildContext context) {
    final games = widget.games;
    final now = DateTime.now();
    final firstDay = games.firstOrNull?.startTimeInLocalTZ() ?? now;
    final lastDay = games.lastOrNull?.startTimeInLocalTZ() ?? now;
    return Card(
      child: TableCalendar(
        focusedDay: now,
        firstDay: firstDay,
        lastDay: lastDay,
        rowHeight: 70,
        headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            headerPadding: EdgeInsets.zero,
            titleTextStyle: context.textTheme.titleLarge!),
        calendarBuilders: CalendarBuilders(
            defaultBuilder: _dayBuilder,
            todayBuilder: _dayBuilder,
            outsideBuilder: (_, __, ___) => Container()),
        onDaySelected: (selectedDay, focusedDay) {
          final game = ref.read(gameByDateProvider).getGameForDate(selectedDay);
          if (game != null) {
            ref.read(selectedEventProvider.notifier).setSelectedGame(game);
          }
        },
      ),
    );
  }

  Widget _dayBuilder(BuildContext context, DateTime date, _) {
    final game = ref.read(gameByDateProvider).getGameForDate(date);
    return CalendarDayCell(day: date, game: game);
  }
}
