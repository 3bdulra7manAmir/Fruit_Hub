// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';

// import '../../../core/widgets/appbar/default_appbar/appbar.dart';
// import '../../../features/09_checkout/presentation/controller/checkout_stepper_controller.dart';

// class StepperScaffold extends ConsumerStatefulWidget
// {
//   const StepperScaffold({super.key, required this.navigationShell});
//   final StatefulNavigationShell navigationShell;

//   @override
//   ConsumerState<StepperScaffold> createState() => _StepperScaffoldState();
// }

// class _StepperScaffoldState extends ConsumerState<StepperScaffold>
// {
//   @override
//   void initState()
//   {
//     super.initState();
//     ref.read(checkoutStepperControllerProvider).init(widget.navigationShell);
//   }

//   @override
//   Widget build(BuildContext context)
//   {
//     final controller = ref.watch(checkoutStepperControllerProvider);
//     return Scaffold(
//       appBar: _buildAppBar(controller.currentStep),
//       body: widget.navigationShell,
//     );
//   }

//   PreferredSizeWidget? _buildAppBar(int index)
//   {
//     switch (index)
//     {
//       case 0: return const CustomAppBar(title: 'الشحن');
//       case 1: return const CustomAppBar(title: 'العنوان');
//       case 2: return const CustomAppBar(title: 'الدفع');
//       case 3: return const CustomAppBar(title: 'المراجعة');
//       default: return null;
//     }
//   }
// }
