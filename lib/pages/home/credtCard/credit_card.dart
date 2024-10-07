import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interface_nubank/controllers/controller_home_page.dart';
import 'package:interface_nubank/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
          direction: Axis.vertical,
          spacing: 12,
          runSpacing: 10,
          children: [
            _iconCredtCard(),
            _textCreditCard(),
            _invoice(),
            _limitDisponible(),
            _installments()
          ]),
    );
  }

  _iconCredtCard() {
    return const Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Cartão de Crédito",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Fatura atual",
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 12,
        ),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (ControllerHomePage) {
              return Text(
                ControllerHomePage.creditCardValue,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              );
            })
      ],
    );
  }

  _limitDisponible() {
    return const Text(
      "Limite disponível de R\$ 4.000,00",
      style: TextStyle(color: Colors.grey),
    );
  }

  _installments() {
    return Container(
        margin: const EdgeInsets.only(top: 4, bottom: 16),
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        decoration: BoxDecoration(
            color: greyColor, borderRadius: BorderRadius.circular(12)),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          child: const Text(
            'Parcelar compras',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
