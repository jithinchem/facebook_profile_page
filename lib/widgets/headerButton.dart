import 'package:flutter/material.dart';

Widget headerButton(
    {@required String? buttonText,
    @required IconData? buttoIcon,
    @required void Function()? buttonAction,
    @required Color? buttonColor}) {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      shadowColor: Colors.transparent,
      backgroundColor: Color.fromARGB(255, 252, 250, 250),
    ),
    onPressed: buttonAction,
    icon: Icon(
      buttoIcon,
      color: buttonColor,
    ),
    label: Text(
      buttonText.toString(),
      style: TextStyle(color: Colors.black),
    ),
  );
}
