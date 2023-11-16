import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/circularButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonAction: () {
                print('search screen');
              },
              buttonIcon: Icons.search,
            ),
            CircularButton(
              buttonAction: () {
                print('messenger screen');
              },
              buttonIcon: Icons.chat,
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: 'Live',
                  buttoIcon: Icons.video_call,
                  buttonAction: () {
                    print("Go Live");
                  },
                  buttonColor: Colors.red),
              buttonTwo: headerButton(
                  buttonText: 'Photo',
                  buttoIcon: Icons.photo_library,
                  buttonAction: () {
                    print('Take Photo');
                  },
                  buttonColor: Colors.green),
              buttonThree: headerButton(
                  buttonText: 'Room',
                  buttoIcon: Icons.video_call,
                  buttonAction: () {
                    print('Create Room');
                  },
                  buttonColor: Colors.purple),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: dulquer,
              name: 'Dulquer',
              publishedAt: "5h",
              postImage: Diwali,
              postTitle: "Happy Diwali!!",
              showBlueTick: true,
              likeCount: '10K',
              shareCount: '1K',
              commentCount: '1K',
            ),
            thickDivider,
            PostCard(
              avatar: Surya,
              name: 'Surya',
              publishedAt: "1 day ago",
              postImage: Surya,
              postTitle: "",
              showBlueTick: true,
              likeCount: '20K',
              shareCount: '2K',
              commentCount: '2K',
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
