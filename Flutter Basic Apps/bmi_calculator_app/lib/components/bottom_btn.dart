import 'package:bmi_calculator_app/utils/constants.dart';
import 'package:flutter/material.dart';
class BottomButton extends StatelessWidget {
  VoidCallback onPressed;
  String btnTitle;
  BottomButton({required this.btnTitle, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            btnTitle,
            style: kLargeBtnTextStyle,
          ),
        ),
      ),
    );
  }
}
