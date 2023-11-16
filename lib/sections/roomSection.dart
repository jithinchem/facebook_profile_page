import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          createRoomButton(),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
          Avatar(displayImage: dulquer, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(right: 5, left: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side:
                BorderSide(width: 2, color: Color.fromARGB(255, 88, 177, 249))),
        onPressed: () {
          print('create chat room');
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          'Create \nRoom',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
