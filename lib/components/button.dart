// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) callBack;

  const Button({
    Key? key,
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.callBack,
  }) : super(key: key);

  const Button.big({
    Key? key,
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.callBack,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Expanded (
      flex: big ? 2 : 1,
      child: RaisedButton (
        color: color,
        child: Text(
          text,
          style: const TextStyle (
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => callBack(text),
      ),
    );
  }
}