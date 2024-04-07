import 'package:expression_ui/expression_ui.dart';
import 'package:flutter/material.dart';
import 'package:rive_counter/tiles/card_holder.dart';

class ListTilesView extends StatelessWidget {
  ListTilesView({super.key});

  final List<CardHolder> cardHolders = [
    CardHolder(
      bankName: 'Monzo',
      expirationDate: DateTime(2025, 11),
      balance: 3333.33,
      clientName: 'Barry Allen',
      first4Digits: '1234',
      middleDigits: '5678 9012',
      last4Digits: '3456',
    ),
    CardHolder(
      bankName: 'Loyds',
      expirationDate: DateTime(2045, 2),
      balance: 45322354551223.33,
      clientName: 'Bruce Wayne',
      first4Digits: '9876',
      middleDigits: '5432 1098',
      last4Digits: '7654',
    ),
    CardHolder(
      bankName: 'Scotiabank',
      expirationDate: DateTime(2025, 11),
      balance: 331123331233.33,
      clientName: 'Tony Stark',
      first4Digits: '1234',
      middleDigits: '5678 9012',
      last4Digits: '3456',
    ),
    CardHolder(
      bankName: 'Nu',
      expirationDate: DateTime(2045, 2),
      balance: 22.33,
      clientName: 'Clark Kent',
      first4Digits: '9876',
      middleDigits: '5432 1098',
      last4Digits: '7654',
    ),
    CardHolder(
      bankName: 'Barclays',
      expirationDate: DateTime(2025, 11),
      balance: 43212.33,
      clientName: 'Peter Parker',
      first4Digits: '1234',
      middleDigits: '5678 9012',
      last4Digits: '3456',
    ),
  ];

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: ListView.separated(
          itemCount: cardHolders.length,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          separatorBuilder: (_, index) => const SizedBox(height: 6),
          itemBuilder: (_, index) {
            return ExpressionTile(
              key: ValueKey(index),
              filePath: 'assets/card_example.riv',
              artboardName: 'card_artboard',
              onTap: (TapEvent e) {},
              objetToDraw: cardHolders[index],
            );
          },
        ),
      ),
    );
  }
}
