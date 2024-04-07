import 'package:flutter/material.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/constants/colors.dart';

class GrammarTestTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconData;
  final void Function()? onPressed;
  final bool rotated;

  const GrammarTestTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconData,
    this.onPressed,
    this.rotated = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        // backgroundColor: MaterialStatePropertyAll(Colors.white),
        // foregroundColor: MaterialStatePropertyAll(Colors.white),
        surfaceTintColor: MaterialStatePropertyAll(Colors.white),
        // side: MaterialStatePropertyAll(
        //   BorderSide(
        //     color: FColors.touchable,
        //   ),
        // ),
        // shape: MaterialStatePropertyAll(OutlinedBorder()),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: const BorderSide(color: FColors.touchable),
          ),
        ),
        overlayColor: const MaterialStatePropertyAll(
          FColors.touchable,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const MaterialStatePropertyAll(
          Size(double.infinity, 45),
        ),
        shadowColor: const MaterialStatePropertyAll(
          Colors.transparent,
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(16),
        ),
      ),
      child: Row(
        children: [
          _buildIcon(),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FText(
                  title,
                  type: FTextType.title,
                ),
                const SizedBox(height: 8),
                FText(
                  subtitle,
                  type: FTextType.description,
                  color: FColors.secondaryText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return Padding(
      padding: !rotated
          ? EdgeInsets.zero
          : const EdgeInsets.only(
              left: 4,
              bottom: 4,
            ),
      child: Stack(
        children: [
          Padding(
            padding: rotated
                ? EdgeInsets.zero
                : const EdgeInsets.only(
                    top: 8,
                    left: 8,
                  ),
            child: Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: FColors.backTouchable,
                border: Border.all(
                  color: FColors.touchable,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
            ),
          ),
          Positioned(
            child: Transform.rotate(
              angle: rotated ? -0.25 : 0,
              alignment: Alignment.bottomRight,
              child: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: FColors.text,
                  border: Border.all(
                    color: FColors.text,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3),
                  ),
                ),
                child: Icon(
                  iconData,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
