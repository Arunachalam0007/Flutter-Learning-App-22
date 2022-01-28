import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? widget;
  ReusableCard({required this.colour, this.widget});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 100,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      child: widget,
    );
  }
}
