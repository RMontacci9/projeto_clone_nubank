import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/controllers/controller_home_page.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //main alinhamento vertical, cross alinhamento horizontal
        children: [
          _accountChevron(),
          const SizedBox(height: 12,),
          _moneyAccount(),
        ],
      ),
    );
  }
  _accountChevron(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("Conta", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }
  _moneyAccount(){
    return GetBuilder<ControllerHomePage>(
      init: ControllerHomePage(),
      builder: (controllerHomePage) {
        return  Text(controllerHomePage.saldo, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
      }
    );
  }
}
