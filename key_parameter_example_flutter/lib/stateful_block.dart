import 'dart:math';
import 'package:flutter/material.dart';

class StatefulBlock extends StatefulWidget {
  const StatefulBlock({super.key});

  @override
  State<StatefulBlock> createState() => _StatefulBlockState();
}

class _StatefulBlockState extends State<StatefulBlock> {
  int randomColorIndex = Random().nextInt(Colors.primaries.length);
  Color myColor = Colors.black;

  @override
  void initState() {
    super.initState();
    myColor = Colors.primaries[randomColorIndex];
  }

  // When I create a StatefulBlock object, the color has been initialized beacuse of the `initState` method.
  // So the parameter `myColor` won't be changed anymore when I press the floating button to call the setState method.

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColor,
      height: 100,
      width: 100,
    );
  }
}
