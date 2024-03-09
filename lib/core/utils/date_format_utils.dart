import 'package:intl/intl.dart';

final class DateFormatUtils {
  static final _monthDayFormat = DateFormat("MMMMd");
  static String formatMonthDay(DateTime date) => _monthDayFormat.format(date);

  static final _timeFormat = DateFormat.jm();
  static String formatTime(DateTime date) => _timeFormat.format(date);
}
