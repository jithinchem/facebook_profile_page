import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May know"),
            trailing: IconButton(
              onPressed: () {
                print('more clicked');
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  name: 'Surya',
                  avatar: Surya,
                  mutualFriends: '1 Mutual friend',
                  addFriend: () {
                    print("add friend");
                  },
                  removeFriend: () {
                    print('remove friend');
                  },
                ),
                SuggestionCard(
                  name: 'Surya',
                  avatar: Surya,
                  mutualFriends: '1 Mutual friend',
                  addFriend: () {
                    print("add friend");
                  },
                  removeFriend: () {
                    print('remove friend');
                  },
                ),
                SuggestionCard(
                  name: 'Surya',
                  avatar: Surya,
                  mutualFriends: '1 Mutual friend',
                  addFriend: () {
                    print("add friend");
                  },
                  removeFriend: () {
                    print('remove friend');
                  },
                ),
                SuggestionCard(
                  name: 'Surya',
                  avatar: Surya,
                  mutualFriends: '1 Mutual friend',
                  addFriend: () {
                    print("add friend");
                  },
                  removeFriend: () {
                    print('remove friend');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
