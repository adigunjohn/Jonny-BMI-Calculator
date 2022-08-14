import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData? iconn;
   final void Function()? onPressed;
  RoundedIconButton({ required this.iconn, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Color(0xFF4C4F5E),
        child: Icon(
          iconn,
          size: 30.0,
          color: Colors.white,
        ),
        shape: CircleBorder(),
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        elevation: 0.0,
        onPressed: onPressed);
  }
}
