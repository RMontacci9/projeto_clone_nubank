import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/util/colors_standard.dart';

import '../../../controllers/controller_home_page.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          _welcome()
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.only(left: 20, top: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80), color: secondaryPurple),
          child: IconButton(
            icon: const Icon(
              MdiIcons.accountOutline,
              color: Colors.white,
            ),
            onPressed: () {},
          )),
    );
  }

  _options() {
    return Row(
      children: [
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return IconButton(
                onPressed: () => controllerHomePage.showValue(),
                icon: Icon(
                  controllerHomePage.eyesValue ?  MdiIcons.eyeOutline : MdiIcons.eyeOffOutline,
                  color: Colors.white,
                ),
              );
            }),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              MdiIcons.helpCircleOutline,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_add,
              color: Colors.white,
            )),
      ],
    );
  }

  _welcome() {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 20),
      child: const Text(
        "Olá, Roberta!",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
