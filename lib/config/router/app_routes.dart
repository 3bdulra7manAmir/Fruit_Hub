abstract class AppRoutes
{
  AppRoutes._();

  /// ========== Onboarding ==========
  static const splash = '/splash';
  static const dotIndicator = '/dots_indicator';

  /// ========== Auth ==========
  static const login = '/login';
  static const register = '/register';
  static const forgetPasswordPhone = '/forgetPasswordPhone';
  static const passwordRecoveryEmail = '/passwordRecoveryEmail';
  static const newPassword = '/newPassword';

  /// ========== Review & Rating ==========
  static const rate = '/rate';

  /// ========== Home Branch ==========
  static const home = '/home';
  static const mostSold = 'mostSold'; // relative route
  static const notificationsForHome = 'notificationsForHome';
  static const searchForHome = 'searchForHome';
  static const itemsDetailsFromHome = 'itemsDetailsFromHome';

  /// ========== Products Branch ==========
  static const products = '/products';
  static const filteredProducts = 'filteredProducts'; // relative
  static const notificationsForProducts = 'notificationsForProducts';
  static const searchForProducts = 'searchForProducts';
  static const itemsDetailsFromProducts = 'itemsDetailsFromProducts';

  /// ========== Cart Branch ==========
  static const cart = '/cart';
  static const itemsDetailsFromCart = 'itemsDetailsFromCart';

  // Future branches:
  // static const profile = '/profile';
}
