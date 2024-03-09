import 'package:bdl_demo/core/extensions/int_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("toStringLeadingZero2", () {
    expect(1.toStringLeadingZero2(), "01");
    expect(10.toStringLeadingZero2(), "10");
    expect(100.toStringLeadingZero2(), "100");
  });
}
