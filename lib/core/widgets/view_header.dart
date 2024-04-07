import 'package:flutter/widgets.dart';

import 'ui/constants/colors.dart';
import 'ui/text.dart';

class ViewHeader extends StatelessWidget {
  final String title;
  final String? titleSecondaryText;
  final String? subtitle;

  const ViewHeader({
    required this.title,
    this.titleSecondaryText,
    this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: FText(
                title,
                type: FTextType.title,
              ),
            ),
            if (titleSecondaryText != null) ...[
              const SizedBox(width: 20),
              Flexible(
                flex: 0,
                child: FText(
                  titleSecondaryText!,
                  type: FTextType.description,
                  color: FColors.secondaryText,
                ),
              )
            ]
          ],
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 8),
          FText(
            subtitle!,
            type: FTextType.description,
          ),
        ]
      ],
    );
  }
}
