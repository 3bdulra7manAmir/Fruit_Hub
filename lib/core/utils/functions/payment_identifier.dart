class PaymentIdentifier {
  // 1) private constructor
  PaymentIdentifier._();
  // 2) static instance (singleton)
  static final PaymentIdentifier instance = PaymentIdentifier._();

  // 3) method
  String getCardType(String cardNumber) {
    if (cardNumber.isEmpty) return 'Unknown';

    if (cardNumber.startsWith('4')) {
      return 'Visa';
    } 
    else if (RegExp(r'^(5[1-5])').hasMatch(cardNumber) ||
      RegExp(r'^(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)',)
      .hasMatch(cardNumber))
    {
      return 'MasterCard';
    } 
    else if (cardNumber.startsWith('34') || cardNumber.startsWith('37')) {
      return 'American Express';
    } 
    else if (cardNumber.startsWith('6011') ||
      cardNumber.startsWith('65') || RegExp(r'^(64[4-9])').hasMatch(cardNumber))
    {
      return 'Discover';
    } 
    else if (RegExp(r'^(50|56|57|58|6)').hasMatch(cardNumber))
    {
      return 'Maestro';
    } 
    else if (cardNumber.startsWith('36') || cardNumber.startsWith('38'))
    {
      return 'Diners Club';
    }
    return 'Unknown';
  }
}
