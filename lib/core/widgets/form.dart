import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget
{
  const CustomForm({super.key, this.formKey, this.formBody});

  final GlobalKey<FormState>? formKey;
  final Widget? formBody;

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: formKey,
      child: formBody!,
    );
  }
}