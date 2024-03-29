import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/widgets/image_widget.dart';
import 'package:bdl_demo/features/games/domain/entities/team.dart';
import 'package:flutter/material.dart';

class EventTeamLogoView extends StatelessWidget {
  static const double logoSize = 50;
  final Team team;
  const EventTeamLogoView({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final score = team.score;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ImageWidget(
          url: team.logo,
          width: logoSize,
          height: logoSize,
        ),
        score == null
            ? Container()
            : Text(
                score.toString(),
                style: context.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
      ],
    );
  }
}
