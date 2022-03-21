import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import '../widget/listview_builder.dart';

// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', quantity: 1, price: 14000),
    Item(name: 'Salt', quantity: 5, price: 10000),
    Item(name: 'Cooking Oil', quantity: 1, price: 23000),
    Item(name: 'Fiesta Nugget', quantity: 3, price: 75000),
    Item(name: 'Keju Kraft', quantity: 1, price: 13500),
    Item(name: 'Le Mineral', quantity: 10, price: 30000),
    Item(name: 'Mie Instant', quantity: 1, price: 2500),
    Item(name: 'Rice', quantity: 2, price: 20000),
  ];

  HomePage({Key? key}) : super(key: key);
// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Shopping List\nRatu Atikah Nurissobach - 2031710145'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListViewBuilder(items: items),
      ),
    );
  }
}
