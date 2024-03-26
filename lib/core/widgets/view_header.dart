import 'package:flutter/widgets.dart';

import 'ui/text.dart';

class ViewHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const ViewHeader({
    required this.title,
    this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FText(
          title,
          type: FTextType.title,
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 17),
          FText(
            subtitle!,
            type: FTextType.description,
          ),
        ]
      ],
    );
  }
}
