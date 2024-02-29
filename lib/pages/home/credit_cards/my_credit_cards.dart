import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/util/colors_standard.dart';

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15), //espaço dentro do container
      margin: const EdgeInsets.fromLTRB(16, 10, 20, 10), //espaço fora do container
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Icon(
            MdiIcons.creditCard,
            color: Colors.black,
          ),
          const SizedBox(width: 12,),
          Text("Meus cartões", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
        ],
      ),
    );
  }
}
