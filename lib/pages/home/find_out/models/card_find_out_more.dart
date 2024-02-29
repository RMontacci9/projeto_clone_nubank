import 'package:flutter/material.dart';
import 'package:projeto_nubank/util/colors_standard.dart';

class CardFindOutMore extends StatelessWidget {
  String image;
  String title;
  String description;
  String buttonText;

   CardFindOutMore({Key? key,
     required this.image, 
     required this.title,
     required this.description,
     required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16,),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(image, fit: BoxFit.cover, width: 230,),
          const SizedBox(height: 22,),
          Text(title , style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          const SizedBox(height: 16),
          Text(description, style: TextStyle(color: Colors.grey),),
          const SizedBox(height: 22,),
          Container(
            margin: const EdgeInsets.only(left: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(buttonText, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
          ),
        ],
      ),
    );
  }
}
