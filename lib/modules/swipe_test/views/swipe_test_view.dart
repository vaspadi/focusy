import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:focusy/core/widgets/index.dart';
import 'package:focusy/core/widgets/ui/circle_answer.dart';
import 'package:focusy/core/widgets/ui/constants/colors.dart';
import 'package:focusy/core/widgets/ui/enums/answer_button_style.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SwipeTestView extends HookConsumerWidget {
  const SwipeTestView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    const backgroundCardTopOffset = 23.0;
    final direction = useState('none');

    return FScaffold(
      appBar: AppBarOfTest(),
      body: Column(
        children: [
          ViewHeader(
            title: 'Н и НН',
            subtitle: 'Свайп влево если “Н”, вправо если “НН”',
          ),
          const Spacer(),

          // Spacer(),
          // FText(direction.value),
          const Spacer(),
          const Spacer(),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FButton(
            text: 'Пропустить вопрос',
            style: FButtonStyle.light,
          ),
        ],
      ),
    );
  }
}
