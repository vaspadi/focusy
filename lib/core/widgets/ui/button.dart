import 'package:flutter/material.dart';

import 'interfaces/button.dart';
import 'text.dart';

class FButton extends StatelessWidget implements IButton {
  final String text;
  @override
  final void Function()? onPressed;
  @override
  final bool disabled;

  const FButton({
    required this.text,
    this.onPressed,
    this.disabled = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      child: FText(
        text,
        type: FTextType.button,
      ),
    );
  }
}
