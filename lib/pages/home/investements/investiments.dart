import 'package:flutter/material.dart';
import 'package:interface_nubank/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Investiments extends StatelessWidget {
  const Investiments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInvestmentsChevron(),
          investmentsValue(),
          consultValue()
        ],
      ),
    );
  }

  _textInvestmentsChevron() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Investimentos',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  investmentsValue() {
    return const Padding(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'O jeito Nu de investir: sem asteriscos, \n linguagem fácil a partir de R\$1. Saima mais.',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  consultValue() {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(18)),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(MdiIcons.cash),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'Consultar saldo para transferência',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
