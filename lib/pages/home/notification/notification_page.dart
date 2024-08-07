import 'package:flutter/material.dart';
import 'package:interface_nubank/utils/colors_standard.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _income(
              textoInicio: 'Seu ',
              textoColorido: 'informe de \nRendimento',
              textoRestante: 'de 2024 já está...'),
          _income(
              textoInicio: 'Chegou o ',
              textoColorido: 'débito \nautomático da fatura'),
          _income(
              textoColorido: 'Salve seus amigos \nda burocracia. ',
              textoRestante: 'Faça um ...')
        ],
      ),
    );
  }

  _income(
      {String? textoInicio,
      required String textoColorido,
      String? textoRestante}) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
        decoration: BoxDecoration(
            color: greyColor, borderRadius: BorderRadius.circular(16)),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: textoInicio,
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            TextSpan(
                text: textoColorido,
                style: TextStyle(color: backgroundColor, fontSize: 16)),
            TextSpan(
                text: textoRestante,
                style: const TextStyle(color: Colors.black, fontSize: 16))
          ]),
        ));
  }
}
