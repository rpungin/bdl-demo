import 'package:bdl_demo/core/presentation/widgets/page_background.dart';
import 'package:bdl_demo/core/presentation/widgets/place_holder_page_view.dart';
import 'package:flutter/material.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          PageBackground(),
          Center(child: PlaceHolderPageView(text: "Tickets")),
        ],
      ),
    ));
  }
}
