import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/listview_builder.dart';
import 'radio_card.dart';

class ArrangementRadioList extends StatefulWidget
{
  const ArrangementRadioList({super.key});

  @override
  State<ArrangementRadioList> createState() => _ArrangementRadioListState();
}

class _ArrangementRadioListState extends State<ArrangementRadioList>
{
  SingingCharacter? _character = SingingCharacter.low2Hight;
  final options = SingingCharacter.values;

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: options.length,
      separatorBuilder: (context, index) => Sizes.s10.verticalSpace,
      itemBuilder: (context, index)
      {
        final option = options[index];
        return ArrangementRadioCard(
          value: option,
          groupValue: _character,
          onChanged: (val) => setState(() => _character = val),
        );
      },
    );
  }
}
