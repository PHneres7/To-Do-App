import 'package:flutter/material.dart';

class MyTextForm extends StatefulWidget {
  final String hintText;
  final InputBorder? border;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool? filled;
  final Color? fillcolor;
  final InputDecoration? decoration;

  const MyTextForm({
    super.key,
    required this.hintText,
    this.border,
    this.margin,
    this.padding,
    this.filled,
    this.fillcolor,
    this.decoration,
  });

  @override
  State<MyTextForm> createState() => _MyTextFormState();
}

class _MyTextFormState extends State<MyTextForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
