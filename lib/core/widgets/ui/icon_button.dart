import 'package:flutter/material.dart';

import 'interfaces/button.dart';

class FIconButton extends StatelessWidget implements IButton {
  final IconData iconData;
  @override
  final bool disabled;
  @override
  final void Function()? onPressed;
  final double? size;

  const FIconButton({
    required this.iconData,
    this.disabled = false,
    this.onPressed,
    this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        iconData,
        size: size,
      ),
      onPressed: disabled ? null : onPressed,
      splashRadius: 20,
      // constraints: BoxConstraints(
      //   maxHeight: 40,
      // ),
      style: const ButtonStyle(
        // minimumSize: MaterialStatePropertyAll(Size(40, 40)),
        // fixedSize: MaterialStatePropertyAll(Size(40, 40)),
        // maximumSize: MaterialStatePropertyAll(Size(40, 40)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
