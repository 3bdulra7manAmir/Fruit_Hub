import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_borders.dart';
import '../../constants/app_styles.dart';


class NavBarItemWidget extends StatelessWidget
{
  const NavBarItemWidget({
    super.key,
    required this.index,
    required this.isSelected,
    required this.activeBackgroundColor,
    required this.activeIconColor,
    required this.activeTitleColor,
    required this.inactiveColor,
    required this.activeIcon,
    required this.inactiveIcon,
    required this.title,
    required this.showActiveBackgroundColor,
    required this.border,
    required this.curve,
    required this.duration,
    required this.itemPadding,
    required this.textStyle,
    required this.onTap,
  });

  final int index;
  final bool isSelected;
  final Color activeBackgroundColor;
  final Color activeIconColor;
  final Color activeTitleColor;
  final Color inactiveColor;
  final Widget activeIcon;
  final Widget? inactiveIcon;
  final String? title;
  final bool showActiveBackgroundColor;
  final ShapeBorder border;
  final Curve curve;
  final Duration duration;
  final EdgeInsets itemPadding;
  final TextStyle textStyle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context)
  {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: isSelected ? 1 : 0),
      curve: curve,
      duration: duration,
      builder: (_, value, __)
      {
        return Material(
          color: Colors.transparent,
          shape: border,
          child: InkWell(
            onTap: isSelected ? null : onTap,
            borderRadius: AppRadiuses.circular.xXMedium,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.centerRight,
              children:
              [
                if (isSelected && title != null)
                  Container(
                    height: 40.h,
                    alignment: Alignment.center,
                    padding: EdgeInsetsDirectional.only(end: 12.w, start: 40.w), //left: 40.r * value, right: 12.r
                    decoration: BoxDecoration(
                      color: activeBackgroundColor,
                      borderRadius: AppRadiuses.circular.xMedium,
                    ),
                  child: Text(title!, style: AppStyles.light(fontColor: AppColors.color.kGreen001),),
                ),
                Container(
                  height: 60.h,
                  padding: EdgeInsets.all(10.r),
                  decoration: BoxDecoration(
                    color: Color.lerp(Colors.transparent, activeIconColor, value),
                    shape: BoxShape.circle,
                  ),
                  child: isSelected ? activeIcon : (inactiveIcon ?? activeIcon),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}