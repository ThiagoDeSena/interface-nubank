import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interface_nubank/controllers/controller_home_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountNubank extends StatefulWidget {
  const AccountNubank({super.key});

  @override
  State<AccountNubank> createState() => _AccountNubankState();
}

class _AccountNubankState extends State<AccountNubank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountChevron(),
          const SizedBox(
            height: 20,
          ),
          _moneyAccount()
        ],
      ),
    );
  }

  _accountChevron() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Conta',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _moneyAccount() {
    return GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder: (controller) {
          return Text(controller.saldo,
              style:
                  const TextStyle(fontSize: 23, fontWeight: FontWeight.bold));
        });
  }
}
