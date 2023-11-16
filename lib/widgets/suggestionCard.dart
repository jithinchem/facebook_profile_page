import 'dart:ffi';

import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final Void? Function() addFriend;
  final Void? Function() removeFriend;
  SuggestionCard(
      {required this.avatar,
      required this.name,
      required this.mutualFriends,
      required this.addFriend,
      required this.removeFriend});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionDetails(),
          suggestionImage(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 140,
        color: Colors.grey[200],
        child: Column(
          children: [
            ListTile(
              title: Text(name != null ? name : ""),
              subtitle: Text(mutualFriends != null ? mutualFriends : ""),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                      buttonAction: addFriend,
                      buttonIcon: Icons.account_box,
                      buttonColor: Color.fromARGB(255, 23, 113, 187),
                      buttonTextColor: Colors.white,
                      buttonIconColor: Colors.white,
                      buttonText: 'Add friend'),
                  blankButton(
                      buttonAction: removeFriend,
                      buttonText: 'Remove',
                      buttonColor: Color.fromARGB(255, 192, 191, 191),
                      buttonTextColor: Color.fromARGB(255, 19, 17, 17)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    required Void? Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
        ),
        onPressed: buttonAction,
        child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor),
        ));
  }

  Widget iconButton({
    required Void? Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: avatar != null
            ? Image.asset(
                Surya,
                height: 250,
                fit: BoxFit.cover,
              )
            : SizedBox(),
      ),
    );
  }
}
