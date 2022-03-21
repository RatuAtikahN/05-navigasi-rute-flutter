import 'package:flutter/material.dart';
import '../widget/card_item_widget.dart';

// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
class ItemPage extends StatelessWidget {
  const ItemPage(
      {Key? key,
      required this.name,
      required this.quantity,
      required this.price})
      : super(key: key);

  static const routeName = '/item';

  final String name;
  final int quantity;
  final int price;
// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Item List\nRatu Atikah Nurissobach - 2031710145'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: CardItemWidget(name: name, quantity: quantity, price: price),
        ),
      ),
    );
  }
}
