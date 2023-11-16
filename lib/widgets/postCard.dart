import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;
  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.commentCount,
    required this.likeCount,
    required this.shareCount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
              buttonText: 'Like',
              buttoIcon: Icons.thumb_up_alt,
              buttonAction: () {
                print('Like this Post');
              },
              buttonColor: Colors.grey[700],
            ),
            buttonTwo: headerButton(
              buttonText: 'Comment',
              buttoIcon: Icons.message_outlined,
              buttonAction: () {
                print('comments this Post');
              },
              buttonColor: Colors.grey[700],
            ),
            buttonThree: headerButton(
                buttonText: 'Share',
                buttoIcon: Icons.share_outlined,
                buttonAction: () {
                  print('share this Post');
                },
                buttonColor: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: 'Comments'),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: 'Shares'),
                SizedBox(
                  width: 5,
                ),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                    onPressed: () {
                      print('drop Down pressed');
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 290),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          )
        : SizedBox();
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[700],
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("more clicked");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
