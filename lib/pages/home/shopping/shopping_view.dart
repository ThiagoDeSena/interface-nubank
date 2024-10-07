import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_textShoppingChevron(), _textValue()],
      ),
    );
  }
}

_textShoppingChevron() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Shopping",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      Icon(MdiIcons.chevronRight)
    ],
  );
}

_textValue() {
  return const Padding(
    padding: EdgeInsets.only(top: 16),
    child: Text(
      'Vantagens exclusivas das nossas marcas \n preferidas',
      style: TextStyle(color: Colors.grey),
    ),
  );
}
