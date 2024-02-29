import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/util/colors_standard.dart';

class Investments extends StatelessWidget {
  const Investments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInvestmentsChevron(),
          _investmentsValue(),
          _consultValue()
        ],
      ),
    );
  }
  _textInvestmentsChevron(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
         Text("Investimentos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
         Icon(MdiIcons.chevronRight)
      ],
    );
  }
  _investmentsValue(){
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(
        "O jeito Nu de investir: sem asteriscos, \n linguagem fácil a partir de R\$ 1. Saiba mais",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
  _consultValue(){
    return Container(
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(16),
      margin: const EdgeInsets.only(top: 12, bottom: 12),
      child: Row(
        children: [
          const Icon(MdiIcons.cash),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text("Consultar saldo para transferência", style: TextStyle(fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
