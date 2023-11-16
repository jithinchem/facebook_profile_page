import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add to Story',
            story: dulquer,
            avatar: dulquer,
            createStorytatus: true,
          ),
          StoryCard(
            labelText: 'Mohan Lal',
            story: dulquer,
            avatar: dulquer,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Mammootty',
            story: dulquer,
            avatar: dulquer,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Add to Story',
            story: dulquer,
            avatar: dulquer,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Add to Story',
            story: dulquer,
            avatar: dulquer,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
