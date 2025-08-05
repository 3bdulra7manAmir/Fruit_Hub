import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/listview_builder.dart';
import '../../controllers/sort_radio_controller.dart';
import 'radio_card.dart';

class ArrangementRadioList extends ConsumerWidget
{
  const ArrangementRadioList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final selected = ref.watch(sortRadioProvider);
    final notifier = ref.read(sortRadioProvider.notifier);
    const options = SingingCharacter.values;
    return CustomListviewBuilder(
      itemCount: options.length,
      separatorBuilder: (context, index) => Sizes.s10.verticalSpace,
      itemBuilder: (context, index)
      {
        final option = options[index];
        return ArrangementRadioCard(
          value: option,
          groupValue: selected,
          onChanged: (val)
          {
            if (val != null)
            {
              notifier.select(val);
            }
          },
        );
      },
    );
  }
}
