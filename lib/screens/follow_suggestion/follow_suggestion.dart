import 'package:flutter/material.dart';
import 'package:twitter_clone/models/user_model.dart';
import 'package:twitter_clone/screens/coustome_widget/texts.dart';
import 'package:twitter_clone/screens/utilities/colors.dart';
import 'package:twitter_clone/screens/utilities/sizes.dart';

import '../main.dart';

class FollowSuggestion extends StatelessWidget {
  const FollowSuggestion({Key? key, required this.user}) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(CustomSizes.padding5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: CustomColors.black,
          boxShadow: [
            BoxShadow(color: CustomColors.white.withOpacity(1), spreadRadius: 0.3),
          ],
        ),
        child: Column(children: [
          CircleAvatar(
              radius: 50, backgroundImage: NetworkImage(user.imageUrl)),
          SizedBox(height:CustomSizes.verticalSpace/2),

          CustomText(text: user.name),
          SizedBox(height:CustomSizes.verticalSpace/2),

          CustomText(text: user.userName,color: CustomColors.white.withOpacity(0.7),),
          SizedBox(height:CustomSizes.verticalSpace*2),
          CustomButton(text: "Follow", function: () {},backgroundColor: CustomColors.white,textColor: CustomColors.black,fontSize:CustomSizes.header5)
        ]));
  }
}
