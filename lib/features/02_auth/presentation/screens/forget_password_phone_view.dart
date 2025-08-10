// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../config/i18n/generated/l10n.dart';
// import '../../../../core/constants/app_sizes.dart';
// import '../../../../core/widgets/appbar/default_appbar/appbar.dart';
// import '../../../../core/widgets/column.dart';
// import '../../../../core/widgets/form.dart';
// import '../widget/forget_password_phone/forget_password_button.dart';
// import '../widget/forget_password_phone/forget_password_title.dart';
// import '../widget/forget_password_phone/number_field.dart';

// class ForgetPasswordPhone extends StatelessWidget
// {
//   ForgetPasswordPhone({super.key});

//   final GlobalKey<FormState> forgetPasswordPhoneFormKey = GlobalKey<FormState>();
//   final TextEditingController phoneController = TextEditingController();

//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: CustomAppBar(title: S.current.forgotPassword),
//       body: CustomForm(
//         formKey: forgetPasswordPhoneFormKey,
//         formBody: CustomSingleChild(
//           children:
//           [
//             Sizes.s24.verticalSpace,
//             const ForgetPasswordTitleWidget(),
//             Sizes.s30.verticalSpace,
//             PhoneNumberWidget(phoneController: phoneController,),
//             Sizes.s30.verticalSpace,
//             ForgetPasswordButtonWidget(formKey: forgetPasswordPhoneFormKey, phoneController: phoneController,),
//             Sizes.s16.verticalSpace,
//           ],
//         ),
//       ),
//     );
//   }
// }
