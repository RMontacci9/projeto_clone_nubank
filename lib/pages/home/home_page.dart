import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_nubank/pages/home/find_out/find_out.dart';
import 'package:projeto_nubank/pages/home/investments/investments.dart';
import 'package:projeto_nubank/pages/home/models/header.dart';
import 'package:projeto_nubank/pages/home/security/security.dart';
import 'package:projeto_nubank/pages/home/shopping/shopping.dart';
import 'package:projeto_nubank/util/colors_standard.dart';
import 'account/account.dart';
import 'actions/menu_items.dart';
import 'credit_cards/credit_card.dart';
import 'credit_cards/my_credit_cards.dart';
import 'notification/notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Account(),
              MenuItems(),
              Divider(thickness: 1.6,), //thickness é a expessura
              MyCreditCards(),
              Divider(thickness: 1.6),
              Notifications(),
              Divider(thickness: 1.6),
              CreditCard(),
              Divider(thickness: 1.6),
              Investments(),
              Divider(thickness: 1.6),
              SecurityLife(),
              Divider(thickness: 1.6),
              ShoppingView(),
              Divider(thickness: 1.6),
              FindOutMore()
            ],
          ),
        ),
      ),
    );
  }
  PreferredSize _appBar(){ //underline significa que não queremos que a appbar seja acessada de outro lugar, apenas aqui
    return PreferredSize(child: AppBar(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ), preferredSize: const Size.fromHeight(0));
  }
}
