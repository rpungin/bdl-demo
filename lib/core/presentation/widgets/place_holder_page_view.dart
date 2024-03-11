import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class PlaceHolderPageView extends StatelessWidget {
  final String text;
  const PlaceHolderPageView({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: context.textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
