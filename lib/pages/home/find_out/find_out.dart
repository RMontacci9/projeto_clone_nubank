import 'package:flutter/material.dart';
import 'package:projeto_nubank/list/card_find_out_more_list.dart';
import 'package:projeto_nubank/pages/home/find_out/models/card_find_out_more.dart';

import '../../../models/card_find_out_more_model.dart';

class FindOutMore extends StatelessWidget {
  const FindOutMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Descubra mais", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          const SizedBox(height: 16,),
          _findOutCards(listCardFindOutMore, context)
        ],
      ),
    );
  }
  _findOutCards(List<CardFindOutMoreModel> listCards, BuildContext context ){
    return SizedBox(
      height: 325,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: ScrollPhysics(),
        itemCount: listCards.length,
          separatorBuilder:(context, index) => const Padding(padding: EdgeInsets.only(right: 10)),
          itemBuilder: (context, index){
          return CardFindOutMore(image: listCards[index].image,
              title: listCards[index].title,
              description: listCards[index].description,
              buttonText: listCards[index].buttonText);
          }
      ),
    );
  }
}
