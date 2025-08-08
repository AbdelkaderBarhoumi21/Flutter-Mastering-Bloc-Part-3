import 'package:flutter/material.dart';

class ButtonCounter extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icons;

  const ButtonCounter({
    super.key,
    required this.onPressed,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(icons, size: 40));
  }
}

class TextCounter extends StatelessWidget {
  final int counter;
  final Color color;
  const TextCounter({
    super.key,
    required this.counter,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text("${counter}", style: TextStyle(fontSize: 50, color: color));
  }
}
