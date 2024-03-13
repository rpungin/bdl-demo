import 'package:bdl_demo/core/extensions/int_extensions.dart';
import 'package:bdl_demo/core/utils/time_zone_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("utcStringToLocalDate", () {
    const utcDateString = "2023-09-25";
    const utcHour = 18;
    final utcString =
        "${utcDateString}T${utcHour.toStringLeadingZero2()}:00:00Z";

    //test method
    final localDate = TimeZoneUtils.utcStringToLocalDate(utcString);

    final timeZoneOffset = DateTime.now().timeZoneOffset;
    final localHour = utcHour + timeZoneOffset.inHours;
    final expectedLocalDateString =
        "${utcDateString}T${localHour.toStringLeadingZero2()}:00";
    expect(_dateAndTime(localDate), expectedLocalDateString);
  });

  test("utcStringToDateWithTimeZoneOffset", () {
    const utcDateString = "2023-09-25";
    const utcHour = 18;
    final utcString =
        "${utcDateString}T${utcHour.toStringLeadingZero2()}:00:00Z";
    const timeZoneOffset = -5;

    //test method
    final localDate = TimeZoneUtils.utcStringToDateWithTimeZoneOffset(
        utcString, timeZoneOffset);

    const localHour = utcHour + timeZoneOffset;
    final expectedLocalDateString =
        "${utcDateString}T${localHour.toStringLeadingZero2()}:00";
    expect(_dateAndTime(localDate), expectedLocalDateString);
  });

  test("utcStringToDateWithTimeZoneOffsetString", () {
    const utcDateString = "2023-09-25";
    const utcHour = 18;
    final utcString =
        "${utcDateString}T${utcHour.toStringLeadingZero2()}:00:00Z";
    const timeZoneOffset = -5;
    final timeZoneOffsetString = "${timeZoneOffset.toStringLeadingZero2()}:00";

    //test method
    final localDate = TimeZoneUtils.utcStringToDateWithTimeZoneOffsetString(
        utcString, timeZoneOffsetString);

    const localHour = utcHour + timeZoneOffset;
    final expectedLocalDateString =
        "${utcDateString}T${localHour.toStringLeadingZero2()}:00";
    expect(_dateAndTime(localDate), expectedLocalDateString);
  });
}

/// Given a date, return just the date and time (HH:MM) portion
/// of iso8601String without the seconds and time zone specifier.
/// For example given "2023-09-25T18:00:00Z" return "2023-09-25T18:00"

String _dateAndTime(DateTime date) => date.toIso8601String().substring(0, 16);
