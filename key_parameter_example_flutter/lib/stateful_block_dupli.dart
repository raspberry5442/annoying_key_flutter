import 'dart:math';
import 'package:flutter/material.dart';

// The purpose of creating this class is to contrast with the StatefulBlock class.

class StatefulBlockDupli extends StatefulWidget {
  const StatefulBlockDupli({super.key});

  @override
  State<StatefulBlockDupli> createState() => _StatefulBlockDupliState();
}

// The display effects of this class is same as the StatelessBlock class.
// Because every time I press the floating button to call the `setState` method,
// the `build` method will be called as well and to rebuild the Container with another new random color

class _StatefulBlockDupliState extends State<StatefulBlockDupli> {
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
