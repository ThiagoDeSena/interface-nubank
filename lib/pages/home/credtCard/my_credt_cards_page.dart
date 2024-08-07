import 'package:flutter/material.dart';
import 'package:interface_nubank/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyCredtCards extends StatelessWidget {
  const MyCredtCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(16, 10, 20, 10),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(16)),
      child: const Row(children: [
        Icon(
          MdiIcons.creditCard,
          color: Colors.black,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          'Meus Cartões',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )
      ]),
    );
  }
}
