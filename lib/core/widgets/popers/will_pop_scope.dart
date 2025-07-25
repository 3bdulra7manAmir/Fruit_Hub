import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../config/router/app_router.dart';
import 'dialog.dart';

class WillPopScopeWidget extends StatelessWidget
{
  const WillPopScopeWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context)
  {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async
      {
        if (didPop) return;
        final canPop = AppRouter.router.canPop();
        if (canPop)
        {
          AppRouter.router.pop(result);
        }
        else
        {
          final allowExit = await _defaultBackHandler(context);
          if (allowExit)
          {
            await SystemNavigator.pop();
          }
        }
      },
      child: child,
    );
  }

  Future<bool> _defaultBackHandler(BuildContext context) async
  {
    final result = await customAppDialog(
      context: context,
      content: const Text('Do you want to exit the app?'),
      actions:
      [
        TextButton(
          onPressed: () => AppRouter.router.pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => AppRouter.router.pop(true),
          child: const Text('Yes'),
        ),
      ],
    );
    return result ?? false;
  }
}
