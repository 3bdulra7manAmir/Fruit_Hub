import 'package:flutter/material.dart';


class CustomGridbuilder extends StatelessWidget
{
  const CustomGridbuilder({super.key, required this.itemBuilder, required this.itemCount, this.physics, this.padding, required this.gridDelegate});

  final Widget Function(BuildContext context, int index) itemBuilder;
  final int itemCount;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;
  final SliverGridDelegate gridDelegate;

  @override
  Widget build(BuildContext context)
  {
    return GridView.builder(
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      shrinkWrap: true,
      physics: physics ?? const ScrollPhysics(),
      padding: padding,
      gridDelegate: gridDelegate,
    );
  }
}