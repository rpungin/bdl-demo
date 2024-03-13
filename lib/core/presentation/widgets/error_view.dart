import 'package:bdl_demo/core/presentation/widgets/place_holder_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ErrorView extends StatelessWidget {
  final Object error;
  const ErrorView(this.error, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Material(
      color: Colors.transparent,
      child: InkWell(
          onLongPress: () async {
            await Clipboard.setData(ClipboardData(text: error.toString()));
            Fluttertoast.showToast(msg: "Copied.");
          },
          child: PlaceHolderPageView(text: error.toString())),
    ));
  }
}
