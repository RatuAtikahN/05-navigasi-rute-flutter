import 'package:flutter/material.dart';
import '../models/item.dart';
import '../pages/item_page.dart';
import 'card_widget.dart';

// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;
// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, ItemPage.routeName, arguments: item);
          },
          child: CardWidget(item: item),
        );
      },
    );
  }
}
// Ratu Atikah Nurissobach - MI2C/20 - 2031710145