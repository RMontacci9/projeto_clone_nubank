import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/util/colors_standard.dart';

class SecurityLife extends StatelessWidget {
  const SecurityLife({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 12,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Text("Seguros", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Text("Proteção para você cuidar do que importa", style: TextStyle(color: Colors.grey),),
          _securityBottom(context)

        ],
      ),
    );
  }
  _securityBottom(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: greyColor
      ) ,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only( bottom: 12, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Row(
            children: const [
              Icon(MdiIcons.heartOutline),
              SizedBox(width: 12,),
              Text("Seguro vida", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),

          Text("Conhecer", style: TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
