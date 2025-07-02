import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_images.dart';
import '../widget/background_color_widget.dart';

class OnboardingFirst extends StatelessWidget {
  const OnboardingFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:
        [
           Stack(
            children:
            [
              const CurvedTopBackground(),
              SvgPicture.asset(AppAssets.icons.fruitPack),
            ],
          ),
          // const Spacer(),
          // Column(
          //   children:
          //   [
          //     const Text("data"),
          //     Sizes.size24.verticalSpace,
          //     const Text("data"),
          //   ],
          // )
        ],
      ),
    );
  }
}