import 'package:flutter/material.dart';

class PopScopeWidget extends StatelessWidget
{
  const PopScopeWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context)
  {
    return PopScope(
      //onPopInvokedWithResult: (didPop, result) => , 
      child: child,
    );
  }
}