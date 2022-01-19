import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/models/tweet_model.dart';
import 'package:twitter_clone/models/user_model.dart';
import 'package:twitter_clone/screens/utilities/colors.dart';
import 'package:twitter_clone/screens/utilities/sizes.dart';
import 'coustome_widget/texts.dart';
import 'follow_suggestion/follow_suggestion.dart';
import 'follow_suggestion/who_to_follow.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Stack(children: [
        Image.network(
            'https://pbs.twimg.com/profile_banners/384120146/1611513117/1500x500'),
        Padding(
          padding:  EdgeInsets.all(CustomSizes.padding5),
          child: Positioned(
              top: 10, child: IconInCircle(icon: FontAwesomeIcons.arrowLeft,)),
        ),
        Positioned(
          top: 10,
          right: 0,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:CustomSizes.padding5),
            child: Row(children: [
              IconInCircle(icon: FontAwesomeIcons.search),
              SizedBox(width: CustomSizes.padding5),
              IconInCircle(icon: FontAwesomeIcons.arrowLeft),
            ]),
          ),
        )
      ]),
      Container(
        padding: EdgeInsets.symmetric(horizontal: CustomSizes.padding5),
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1354716359188484102/YU3gDr_R_400x400.jpg')),
              CustomButton(text: "Follow", function: () {})
            ]),
            SizedBox(height: CustomSizes.verticalSpace * 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Omar Abdaualaziz ",
                  fontSize: CustomSizes.header2,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: CustomSizes.verticalSpace / 2),
                CustomText(
                  text: "@omaz7 ",
                  color: CustomColors.white.withOpacity(0.58),
                ),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                CustomText(
                    text:
                        "﴿عَسَى رَبِّي أَنْ يَهْدِيَنِي سَوَاءَ السَّبِيلِ﴾ Saudi political activist .. #حزب_التجمع_الوطني"),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                BioInfo(
                    text: "Torronto,London", icon: FontAwesomeIcons.home),
                BioInfo(text: "test.com", icon: FontAwesomeIcons.internetExplorer),
                BioInfo(
                    text: "joined October 2018",
                    icon: FontAwesomeIcons.calendarAlt),
                SizedBox(height:CustomSizes.verticalSpace),
                Row(
                  children: [
                    CustomText(
                      text: "6,666 ",
                      color: CustomColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: CustomSizes.header3,
                    ),
                    CustomText(
                        text: "Following ",
                        color: CustomColors.white.withOpacity(0.58),
                        fontSize: CustomSizes.header4),
                    SizedBox(width: CustomSizes.verticalSpace),
                    CustomText(
                        text: "6,666 ",
                        color: CustomColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: CustomSizes.header3),
                    CustomText(
                        text: "Followers ",
                        color: CustomColors.white.withOpacity(0.58),
                        fontSize: CustomSizes.header4),
                  ],
                ),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      ProfileSections(
                        text: "Tweets",
                      ),
                      ProfileSections(text: "Tweets&replies", isSelected: true),
                      ProfileSections(
                        text: "Media",
                      ),
                      ProfileSections(
                        text: "Likes",
                      ),
                    ],
                  ),
                ),

                /// TWEET INFO
                Divider(
                  color: Colors.white.withOpacity(0.4),
                ),
////WHO TO FOLLOW
                SizedBox(
                  height:300,
                  child: ListView.builder(
                    itemBuilder: (BuildContext, index){
                      return Card(
                          child:WhoToFollow(user:usersList[index])
                      );
                    },
                    itemCount: 3,
                    padding: EdgeInsets.all(5),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                ),

              ////
                CustomText(text: 'Who to follow',fontSize: CustomSizes.header3,fontWeight: FontWeight.bold,),
                SizedBox(height:CustomSizes.verticalSpace*2),
                SizedBox(
                  height:250,
                  child: ListView.builder(
                    itemBuilder: (BuildContext, index){
                      return Card(
                        child:FollowSuggestion(user:usersList[index])
                      );
                    },
                    itemCount: usersList.length,
                    padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                ListView.separated(
                  itemBuilder: (BuildContext, index){
                    return Tweet(tweet:tweetsList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Divider(color: CustomColors.white,);
                  },
                  itemCount: tweetsList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),

                  padding: EdgeInsets.all(5),
                  scrollDirection: Axis.vertical,
                )

              ],
            )
          ],
        ),
      ),
    ])),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),

    );
  }
}

class Tweet extends StatelessWidget {
  const Tweet({
    Key? key, required this.tweet,

  }) : super(key: key);

  final TweetModel tweet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: CustomSizes.padding3),
      child: Column(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

              Row(
                children:[
                  CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          tweet.user.imageUrl)),
                  SizedBox(width: CustomSizes.verticalSpace),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text:  tweet.user.name,
                        fontSize: CustomSizes.header2,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text:  tweet.user.userName,
                            color: CustomColors.white.withOpacity(0.58),
                          ),
                          CustomText(
                            text: tweet.date,
                            color: CustomColors.white.withOpacity(0.58),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]
              ),
              FaIcon(FontAwesomeIcons.dotCircle, color: CustomColors.white),

            ]),
          ],
        ),
        SizedBox(height:CustomSizes.verticalSpace*2),
        CustomText(
          text: tweet.tweet,
          color: CustomColors.white,
          fontSize: CustomSizes.header4,
            isCenter:false
        ),
        SizedBox(height:CustomSizes.verticalSpace*2),

        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TweetReaction(text: '${tweet.replies}', icon: FontAwesomeIcons.comment),
          TweetReaction(text: '${tweet.retweet}', icon: FontAwesomeIcons.retweet),
          TweetReaction(text: '${tweet.loves}', icon: FontAwesomeIcons.heart),
          TweetReaction(text: '${tweet.share}', icon: FontAwesomeIcons.share),
        ])
      ]),
    );
  }
}

class ProfileSections extends StatelessWidget {
  const ProfileSections({
    Key? key,
    this.isSelected = false,
    required this.text,
  }) : super(key: key);
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: CustomSizes.padding5),
      child: Column(
        children: [
          CustomText(
            text: text,
            color: CustomColors.white,
            fontWeight: FontWeight.bold,
            fontSize: CustomSizes.header3,
          ),
          Divider(
              color: isSelected ? CustomColors.white : CustomColors.red,
              thickness: 10,
              height: 10)
        ],
      ),
    );
  }
}

class BioInfo extends StatelessWidget {
  const BioInfo({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom:CustomSizes.padding8),
      child: Row(
        children: [
          FaIcon(
            icon,
            color: CustomColors.white.withOpacity(0.58),
            size: CustomSizes.iconSize/1.3,
          ),
          SizedBox(width: CustomSizes.verticalSpace),
          CustomText(
            text: text,
            color: CustomColors.white.withOpacity(0.58),
          ),
        ],
      ),
    );
  }
}

class IconInCircle extends StatelessWidget {
  const IconInCircle({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
          icon: FaIcon(icon,color: CustomColors.white,),
          onPressed: () {}),
      decoration: new BoxDecoration(
        color: CustomColors.grey.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
    );
  }
}



class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.function, this.backgroundColor = CustomColors.black, this.textColor = CustomColors.white, this.fontSize})
      : super(key: key);

  final String text;
  final Function() function;
  final Color backgroundColor ,textColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: backgroundColor,
        minimumSize: Size(88, 36),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            side: BorderSide(
              width: 1,
              color: Colors.white,
            )),
      ),
      onPressed: function,
      child: CustomText(
        text: text,
        fontSize: fontSize??CustomSizes.header3,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );
  }
}

class TweetReaction extends StatelessWidget {
  const TweetReaction({Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: CustomSizes.padding5),
      child: Row(children: [
        FaIcon(icon, color: CustomColors.white),
        SizedBox(width: CustomSizes.verticalSpace / 2),
        CustomText(text: text),
      ]),
    );
  }
}
