import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  //const AppBarButton({super.key});

  final void Function() buttonAction;
  final IconData buttonIcon;
  final Color IconColor;

  CircularButton({
    required this.buttonAction,
    required this.buttonIcon,
    this.IconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: IconColor,
          size: 25,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
