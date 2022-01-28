import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  final Widget child;
  VoidCallback onPressedBtn;
  RoundIconButton({
    required this.child,
    required this.onPressedBtn,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressedBtn,
      child: child,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}