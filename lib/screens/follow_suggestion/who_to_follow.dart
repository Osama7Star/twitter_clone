import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/models/user_model.dart';
import 'package:twitter_clone/screens/coustome_widget/texts.dart';
import 'package:twitter_clone/screens/utilities/colors.dart';
import 'package:twitter_clone/screens/utilities/sizes.dart';

import '../main.dart';

class WhoToFollow extends StatelessWidget {
  const WhoToFollow({Key? key, required this.user}) : super(key: key);

  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: CustomSizes.padding5),
      color:CustomColors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Row(
                children:[
                  CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          user.imageUrl)),
                  SizedBox(width:CustomSizes.verticalSpace),
                  Column(
                    children: [
                      CustomText(text:user.name),
                      CustomText(text:user.userName,color: CustomColors.white.withOpacity(0.6),),

                    ],
                  ),
                ]
              ),
              CustomButton(text: "Follow", function: () {},backgroundColor: CustomColors.white,textColor: CustomColors.black,fontSize:CustomSizes.header5)

            ],

          ),
          SizedBox(height: CustomSizes.verticalSpace),
          CustomText(text:user.bio),

        ]
      ),
    );
  }
}
