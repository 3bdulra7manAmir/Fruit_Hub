import 'package:flutter/material.dart';

void customAppDialog({
  required BuildContext context,
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
