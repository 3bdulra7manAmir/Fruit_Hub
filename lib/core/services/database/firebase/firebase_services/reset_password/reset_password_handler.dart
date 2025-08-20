import 'package:app_links/app_links.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reset_password_handler.g.dart';

/// [Provider Stores oobCode Comming from Firebase link]
@riverpod
class ResetCode extends _$ResetCode
{
  @override
  String? build() => null;

  void setCode(String code) => state = code;
  void clear() => state = null;
}


/// Singleton Responsible for listening for deep links and update em [ResetCode]
@riverpod
ResetPasswordLinkHandler resetPasswordLinkHandler(Ref ref) {
  final handler = ResetPasswordLinkHandler(ref);
  handler.init();
  return handler;
}


class ResetPasswordLinkHandler
{
  ResetPasswordLinkHandler(this.ref);
  final Ref ref;
  final AppLinks _appLinks = AppLinks();

  void init() async {
    final initialUri = await _appLinks.getInitialLink();
    _handleUri(initialUri);
    _appLinks.uriLinkStream.listen(_handleUri);
  }

  void _handleUri(Uri? uri) {
    if (uri == null) return;
    final oobCode = uri.queryParameters['oobCode'];
    if (oobCode != null) {
      ref.read(resetCodeProvider.notifier).setCode(oobCode);
    }
  }
}