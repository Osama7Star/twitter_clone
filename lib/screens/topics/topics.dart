import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/coustome_widget/texts.dart';
import 'package:twitter_clone/screens/utilities/colors.dart';
import 'package:twitter_clone/screens/utilities/sizes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Topics extends StatelessWidget {
  const Topics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(horizontal:CustomSizes.padding5,vertical:CustomSizes.padding8/2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: CustomColors.black,
        boxShadow: [
          BoxShadow(color: CustomColors.white.withOpacity(1), spreadRadius: 0.3),
        ],
      ),
      child:Row(
        mainAxisSize: MainAxisSize.min,
        children:  [
          Expanded(child: CustomText(text:"Accounting",fontSize: CustomSizes.header3,fontWeight: FontWeight.bold,)),
          IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.plus,color: CustomColors.blue,),
              onPressed: () {}),
          IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: Icon(Icons.close,color: CustomColors.white,),
              onPressed: () {}),
        ],
      )
    );
  }
}
