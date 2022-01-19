import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/models/trend_model.dart';
import 'package:twitter_clone/screens/coustome_widget/texts.dart';
import 'package:twitter_clone/screens/utilities/colors.dart';
import 'package:twitter_clone/screens/utilities/sizes.dart';

class Trend extends StatelessWidget {
  const Trend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body:ListView(
        children:
          [
            CustomText(text: "Trend For You",fontSize: CustomSizes.header5,),
            ListView.builder(
              itemBuilder: (BuildContext, index){
                return Padding(
                  padding:  EdgeInsets.only(left: CustomSizes.padding8,right:CustomSizes.padding8,bottom:CustomSizes.padding1*2),
                  child: TrendWidget(list: trendList[index]),
                );
              },
              itemCount: trendList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),

              padding: EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
            )
          ]
      )
    );
  }
}

class TrendWidget extends StatelessWidget {
  const TrendWidget({
    Key? key,required this.list
  }) : super(key: key);

  final TrendModel list ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[

            CustomText(text: '${list.topic} · trending ',fontSize: CustomSizes.header4,color: CustomColors.white.withOpacity(0.5)),
            SizedBox(height:CustomSizes.verticalSpace/2),

            CustomText(text: list.name,fontSize: CustomSizes.header3,),
            SizedBox(height:CustomSizes.verticalSpace/2),

            CustomText(text: "${list.tweetsNumbers} tweets",fontSize: CustomSizes.header4,color: CustomColors.white.withOpacity(0.5)),

          ]
        ),
        IconButton(
          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon: FaIcon(FontAwesomeIcons.list,color: CustomColors.white,),
            onPressed: () {}),
      ],
    );
  }
}
