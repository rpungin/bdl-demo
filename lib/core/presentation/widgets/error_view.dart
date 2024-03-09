import 'package:flutter/widgets.dart';

class ErrorView extends StatelessWidget {
  final Object error;
  const ErrorView(this.error, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(error.toString()));
  }
}
