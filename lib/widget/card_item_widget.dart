import 'package:flutter/material.dart';

// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    Key? key,
    required this.name,
    required this.quantity,
    required this.price,
  }) : super(key: key);

  final String name;
  final int quantity;
  final int price;
// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(child: Text(name)),
            Expanded(
              child: Text(
                quantity.toString(),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                price.toString(),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
