import 'package:flutter/material.dart';

dynamic customAppDialog({
  required BuildContext context,
  bool? barrierDismissible,
  String? title,
  String? subtitle,
  AlignmentGeometry? alignment,
  MainAxisAlignment? actionsAlignment,
  Widget? content,
  List<Widget>? actions,
  ShapeBorder? shape,
  Color? backgroundColor,
  })
  {
    showDialog(
    context: context,
    barrierDismissible: barrierDismissible ?? true,
    barrierColor: backgroundColor,
    builder: (BuildContext context) => AlertDialog(
      alignment: alignment,
      actionsAlignment: actionsAlignment,
      content: content,
      actions: actions,
      shape: shape,
      backgroundColor: backgroundColor,
    ),
  );
}
