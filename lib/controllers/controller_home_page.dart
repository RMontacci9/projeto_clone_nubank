import 'package:get/get.dart';

class ControllerHomePage extends GetxController{
  String saldo = "R\$ 873.244,00";
  String crediCardValue = "R\$ 4.568,90";
  bool eyesValue = true;

  void showValue(){
    eyesValue = !eyesValue;

    update();
  }
}