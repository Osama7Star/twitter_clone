import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/coustome_widget/texts.dart';
import 'package:twitter_clone/screens/topics/topics.dart';
import 'package:twitter_clone/screens/utilities/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/screens/utilities/sizes.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: [
            IconButton(
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(
                  FontAwesomeIcons.star,
                  color: CustomColors.white,
                ),
                onPressed: () {}),
            CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1354716359188484102/YU3gDr_R_400x400.jpg')),
          ],
        ),
        SizedBox(height:CustomSizes.verticalSpace),

        Padding(
          padding:  EdgeInsets.only(left:CustomSizes.padding1*2),
          child: Column(
            children:[
              Row(
                children: [
                  CustomText(text:"Recent tweets from ",color:CustomColors.white.withOpacity(0.9),fontSize: CustomSizes.header4,),
                  CustomText(text:"Elon Musk ",fontWeight: FontWeight.bold,fontSize: CustomSizes.header4)

                ],
              ),
              SizedBox(height:CustomSizes.verticalSpace/2),
              CustomText(text:"We lanched out probe to the orbit successfully ",color:CustomColors.white.withOpacity(0.7),isCenter: false,fontSize:CustomSizes.header4),

            ]
          ),
        ),
        Topics(),
      ],
    ));
  }
}
