import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/controllers/controller_home_page.dart';
import 'package:projeto_nubank/util/colors_standard.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 10, //espaçamento horizontal
        spacing: 12 , //espaçamento vertical
        children: [_iconCreditCard(), _textCreditCard(), _invoice(), _limitText(), _installments()],
      ),
    );
  }

  _iconCreditCard() {
    return Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Cartão de Crédito",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
        Text(
          "Fatura atual",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 12,),
        GetBuilder<ControllerHomePage>(
          init: ControllerHomePage(),
          builder: (controllerHomePage) {
            return Text(
              controllerHomePage.crediCardValue,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            );
          }
        ),

      ],
    );
  }
  _limitText(){
    return const Text("Limite disponível de R\$ 4.000,00", style: TextStyle(color: Colors.grey),);
  }
  _installments(){
    return Container(
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15)
      ),
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: Text(
          "Parcelar compras", style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
