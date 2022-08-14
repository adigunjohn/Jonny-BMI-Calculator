import 'package:flutter/material.dart';

class ReContainer extends StatelessWidget {
  final Color colorr;
  final Widget? child;
  final Function()? ontap;

  ReContainer({required this.colorr, this.child,this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: child,
        decoration: BoxDecoration(
          color: colorr,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}



// GestureDetector(
// onTap: () {
// setState(() {
// pickedGender = Gender.lady;
// });
// },