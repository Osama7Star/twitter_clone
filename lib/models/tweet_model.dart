import 'package:twitter_clone/models/user_model.dart';

class TweetModel{

  String tweet;
  UserModel user;
  String date;
  int replies;
  int retweet ;
  int loves ;
  int share;

  TweetModel(
      {
     required this.tweet,
     required this.user,
     required this.date,
     required this.replies,
     required this.retweet,
     required this.loves,
     required this.share});
}

List<TweetModel> tweetsList =[
  TweetModel(tweet:'This is a tweet ',date: "20 oct 2016",replies: 120,retweet: 208,loves: 25,share: 25,user:UserModel(name: 'Ali Abdaal', userName: '@aliAbdaal', imageUrl: 'https://pbs.twimg.com/profile_images/1157059189161619456/Ke7LQ7NO_400x400.jpg',bio:'bio is here')),
  TweetModel(tweet:'This is a tweet ',date: "20 oct 2016",replies: 120,retweet: 208,loves: 25,share: 25,user:UserModel(name: 'Ali Abdaal', userName: '@aliAbdaal', imageUrl: 'https://pbs.twimg.com/profile_images/1157059189161619456/Ke7LQ7NO_400x400.jpg',bio:'bio is here')),
  TweetModel(tweet:'This is a tweet ',date: "20 oct 2016",replies: 120,retweet: 208,loves: 25,share: 25,user:UserModel(name: 'Ali Abdaal', userName: '@aliAbdaal', imageUrl: 'https://pbs.twimg.com/profile_images/1157059189161619456/Ke7LQ7NO_400x400.jpg',bio:'bio is here')),
  TweetModel(tweet:'This is a tweet ',date: "20 oct 2016",replies: 120,retweet: 208,loves: 25,share: 25,user:UserModel(name: 'Ali Abdaal', userName: '@aliAbdaal', imageUrl: 'https://pbs.twimg.com/profile_images/1157059189161619456/Ke7LQ7NO_400x400.jpg',bio:'bio is here')),
  TweetModel(tweet:'This is a tweet ',date: "20 oct 2016",replies: 120,retweet: 208,loves: 25,share: 25,user:UserModel(name: 'Ali Abdaal', userName: '@aliAbdaal', imageUrl: 'https://pbs.twimg.com/profile_images/1157059189161619456/Ke7LQ7NO_400x400.jpg',bio:'bio is here')),
  TweetModel(tweet:'This is a tweet ',date: "20 oct 2016",replies: 120,retweet: 208,loves: 25,share: 25,user:UserModel(name: 'Ali Abdaal', userName: '@aliAbdaal', imageUrl: 'https://pbs.twimg.com/profile_images/1157059189161619456/Ke7LQ7NO_400x400.jpg',bio:'bio is here')),
  TweetModel(tweet:'This is a tweet ',date: "20 oct 2016",replies: 120,retweet: 208,loves: 25,share: 25,user:UserModel(name: 'Ali Abdaal', userName: '@aliAbdaal', imageUrl: 'https://pbs.twimg.com/profile_images/1157059189161619456/Ke7LQ7NO_400x400.jpg',bio:'bio is here')),
  TweetModel(tweet:'This is a tweet ',date: "20 oct 2016",replies: 120,retweet: 208,loves: 25,share: 25,user:UserModel(name: 'Ali Abdaal', userName: '@aliAbdaal', imageUrl: 'https://pbs.twimg.com/profile_images/1157059189161619456/Ke7LQ7NO_400x400.jpg',bio:'bio is here')),

];