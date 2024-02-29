import 'package:flutter/material.dart';

import '../../../util/colors_standard.dart';


class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _income(),
          _saveMoney(),
          _securityLife(),
          _friendsRecomended()
        ],
      ),
    );
  }

  _income() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * .7,
      //ocupa 70% da tela
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(text: "Seu ",
                style: TextStyle(color: Colors.black, fontSize: 16),),
              TextSpan(text: "Informe de rendimentos ",
                style: TextStyle(color: backgroundColor, fontSize: 16),),
              TextSpan(text: "de 2022 já está... ",
                style: TextStyle(color: Colors.black, fontSize: 16),),
            ]
        ),
      ),
    );
  }

  _saveMoney() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * .7,
      //ocupa 70% da tela
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(text: "Chegou o ",
                style: TextStyle(color: Colors.black, fontSize: 16),),
              TextSpan(text: "Débito automático da fatura do... ",
                style: TextStyle(color: backgroundColor, fontSize: 16),),
            ]
        ),
      ),
    );
  }
  _friendsRecomended() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * .7,
      //ocupa 70% da tela
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(text: "Conheça ",
                style: TextStyle(color: Colors.black, fontSize: 16),),
              TextSpan(text: "Nubank Vida ",
                style: TextStyle(color: backgroundColor, fontSize: 16),),
              TextSpan(text: "Um seguro simples e que cabe... ",
                style: TextStyle(color: Colors.black, fontSize: 16),),
            ]
        ),
      ),
    );
  }
  _securityLife() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * .7,
      //ocupa 70% da tela
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(text: "Salve seus amigos da burocracia. ",
                style: TextStyle(color: Colors.black, fontSize: 16),),
              TextSpan(text: "Faça um... ",
                style: TextStyle(color: backgroundColor, fontSize: 16),),
            ]
        ),
      ),
    );
  }
}
