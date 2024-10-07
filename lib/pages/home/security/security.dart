import 'package:flutter/material.dart';
import 'package:interface_nubank/utils/colors_standard.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:interface_nubank/utils/colors_standard.dart';

class Security extends StatelessWidget {
  const Security({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_textSecurityChevron(), securityValue(), consultValue()],
      ),
    );
  }

  _textSecurityChevron() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Seguros',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  securityValue() {
    return const Padding(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Proteção para você cuidar do que importa',
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(MdiIcons.heartOutline),
              SizedBox(
                width: 12,
              ),
              Text(
                'Seguro vida',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Text(
            'Conhecer',
            style: TextStyle(
              color: backgroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
