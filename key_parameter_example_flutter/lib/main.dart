import 'package:flutter/material.dart';
import 'blocks_page.dart';

void main() {
  runApp(const SwapColorBlock());
}

class SwapColorBlock extends StatelessWidget {
  const SwapColorBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocksPage(),
    );
  }
}
