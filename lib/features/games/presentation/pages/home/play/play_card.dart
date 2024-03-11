import 'package:flutter/material.dart';

class PlayCard extends StatelessWidget {
  final String imageName;
  const PlayCard({Key? key, required this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset(
        "assets/images/$imageName",
        width: 200,
        height: 115,
        fit: BoxFit.cover,
      ),
    );
  }
}
