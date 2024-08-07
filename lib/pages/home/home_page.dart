import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interface_nubank/pages/home/account/account.dart';
import 'package:interface_nubank/pages/home/actions/menu_itens.dart';
import 'package:interface_nubank/pages/home/credtCard/credit_card.dart';
import 'package:interface_nubank/pages/home/credtCard/my_credt_cards_page.dart';
import 'package:interface_nubank/pages/home/model/heard.dart';
import 'package:interface_nubank/pages/home/notification/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            AccountNubank(),
            MenuItens(),
            Divider(thickness: 1.6),
            MyCredtCards(),
            NotificationsPage(),
            Divider(thickness: 1.6),
            CreditCard()
          ],
        ),
      )),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ));
  }
}
