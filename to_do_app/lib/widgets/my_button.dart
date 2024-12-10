// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String labelText;
  final WidgetBuilder route;
  final EdgeInsetsGeometry? padding;

  const MyButton({
    super.key,
    required this.labelText,
    required this.route,
    this.padding,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.only(top: 100, bottom: 20),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: widget.route),
          );
        },
        style: ButtonStyle(
            backgroundColor: const WidgetStatePropertyAll(Colors.blue),
            minimumSize: WidgetStatePropertyAll(Size(360, 50)),
            shape: WidgetStatePropertyAll(BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))))),
        child: Text(
          widget.labelText,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
