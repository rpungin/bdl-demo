
final class TimeZoneUtils {
  static DateTime utcStringToLocalDate(String utcString) {
    final timeZoneOffset = DateTime.now().timeZoneOffset;
    return DateTime.parse(utcString).add(timeZoneOffset);
  }

  static DateTime utcStringToDateWithTimeZoneOffsetString(
      String utcString, String timeZoneOffsetString) {
    final timeZoneOffset = parseHourFromHHMMString(timeZoneOffsetString);
    return DateTime.parse(utcString).add(Duration(hours: timeZoneOffset));
  }

  static DateTime utcStringToDateWithTimeZoneOffset(
      String utcString, int timeZoneOffset) {
    return DateTime.parse(utcString).add(Duration(hours: timeZoneOffset));
  }

  static int parseHourFromHHMMString(String hhmmString) {
    final components = hhmmString.split(":");
    return int.parse(components[0]);
  }
}
