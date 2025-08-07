import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme/color_manager/colors.dart';
import 'nav_bar_item_widget.dart';
import 'nav_bar_model.dart';

class CustomNavBar extends StatelessWidget
{
  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
    this.curve = Curves.easeOutQuint,
    this.duration = const Duration(milliseconds: 1000),
    this.height,
    this.backgroundColor,
    this.showActiveBackgroundColor = true,
    this.border = const StadiumBorder(),
    required this.itemPadding,
    required this.textStyle,
  });

  final int currentIndex;
  final Curve curve;
  final Duration duration;
  final num? height;
  final Color? backgroundColor;
  final bool showActiveBackgroundColor;
  final ShapeBorder border;
  final EdgeInsets itemPadding;
  final List<NavBarItemModel> items;
  final ValueChanged<int> onTap;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context)
  {
    final isLight = Theme.of(context).brightness == Brightness.light;
    final inactiveColor =  isLight ? const Color(0xFF505050) : const Color(0xF2FFFFFF);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      decoration: BoxDecoration(
        //color: AppColors.color.kWhite001,
        color: AppColors.color.kWhite005,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r)),
        boxShadow: const [BoxShadow(blurRadius: 7, offset: Offset(0, -2), color: Colors.black12,)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(items.length, (index)
        {
          final item = items[index];
          final activeColor = item.activeColor ?? Colors.blue;
          return NavBarItemWidget(
            index: index,
            isSelected: index == currentIndex,
            activeBackgroundColor: activeColor.withValues(alpha: item.backgroundColorOpacity.toDouble()),
            activeIconColor: item.activeIconColor ?? activeColor,
            activeTitleColor: item.activeTitleColor ?? activeColor,
            inactiveColor: item.inactiveColor ?? inactiveColor,
            activeIcon: item.activeIcon,
            inactiveIcon: item.inactiveIcon,
            title: item.title,
            showActiveBackgroundColor: showActiveBackgroundColor,
            border: border,
            curve: curve,
            duration: duration,
            itemPadding: itemPadding,
            textStyle: textStyle,
            onTap: () => onTap(index),
          );
        }),
      ),
    );
  }
}