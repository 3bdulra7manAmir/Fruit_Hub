import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/listview_builder.dart';
import 'payment_option_card.dart';


class PaymentOptionCardsList extends StatefulWidget
{
  const PaymentOptionCardsList({super.key});

  @override
  State<PaymentOptionCardsList> createState() => _PaymentOptionCardsListState();
}

class _PaymentOptionCardsListState extends State<PaymentOptionCardsList>
{
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 5,
      separatorBuilder: (context, index) => Sizes.s8.verticalSpace,
      itemBuilder: (context, index)
      {
        return InkWell(
          borderRadius: AppRadiuses.circular.xXXXXSmall,
          onTap: () => setState(() {selectedIndex = index;}),
          child: PaymentOptionCard(isSelected: selectedIndex == index,)
        );
      },
    );
  }
}
