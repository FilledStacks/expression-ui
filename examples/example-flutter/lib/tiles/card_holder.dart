import 'package:expression_ui/expression_ui.dart';
import 'package:intl/intl.dart';

class CardHolder implements ToJsonTile {
  final String bankName;
  final DateTime expirationDate;
  final double balance;
  final String clientName;
  final String first4Digits;
  final String last4Digits;
  final String? middleDigits;

  CardHolder({
    required this.bankName,
    required this.expirationDate,
    required this.balance,
    required this.clientName,
    required this.first4Digits,
    required this.last4Digits,
    this.middleDigits,
  });

  @override
  Map<String, dynamic> toJsonTile() {
    return {
      "bank_name": bankName,
      "exp_date": DateFormat('MM/yy').format(expirationDate),
      "balance": balance.toString(),
      "client_name": clientName,
      "first_4_digits": first4Digits,
      "last_4_digits": last4Digits,
      "middle_digits": ' $middleDigits '
    };
  }
}
