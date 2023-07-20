import 'dart:math';
import 'package:flutter/material.dart';

class StatelessBlock extends StatelessWidget {
  const StatelessBlock({super.key});

  @override
  Widget build(BuildContext context) {
    int randomColorIndex = Random().nextInt(Colors.primaries.length);
    Color myColor = Colors.primaries[randomColorIndex];

    return Container(
      color: myColor,
      height: 100,
      width: 100,
    );
  }
}
