extension IntExtensions on int {
  String toStringLeadingZero2() =>
      "${this < 0 ? "-" : ""}${abs().toString().padLeft(2, "0")}";
}
