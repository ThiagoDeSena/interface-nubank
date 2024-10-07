import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:interface_nubank/pages/home/model/card_find_out.dart';

class FindOut extends StatelessWidget {
  const FindOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descubra mais',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          findOutCard()
        ],
      ),
    );
  }

  findOutCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardFindOut(
              imagem: 'assets/images/card1.png',
              title: 'Parcela compras no app',
              description: 'Sua liberdade financeira \n começa com você ..',
              buttonText: 'Conhecer'),
          const SizedBox(
            width: 20,
          ),
          CardFindOut(
              imagem: 'assets/images/card1.png',
              title: 'Portabilidade de salário',
              description:
                  'Tenha mais comodidade e fácilidade \n com a comta Nubank',
              buttonText: 'Conhecer'),
          const SizedBox(
            width: 20,
          ),
          CardFindOut(
              imagem: 'assets/images/card1.png',
              title: 'Indique seus amigos',
              description: 'Seus amigos juntos com você \n no Nubank',
              buttonText: 'Conhecer'),
          const SizedBox(
            width: 20,
          ),
          CardFindOut(
              imagem: 'assets/images/card1.png',
              title: 'Financiamento seguro',
              description: 'Financie com a gente e realize seus \n sonhos',
              buttonText: 'Conhecer')
        ],
      ),
    );
  }
}
