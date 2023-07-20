import 'package:flutter/material.dart';
import 'stateless_block.dart';
import 'stateful_block.dart';
import 'stateful_block_dupli.dart';

class BlocksPage extends StatefulWidget {
  const BlocksPage({super.key});

  @override
  State<BlocksPage> createState() => _BlocksPageState();
}

class _BlocksPageState extends State<BlocksPage> {
//Whether creating an object of the StatelessWidget class or StatefulWidget class, you can use the key parameter during instantiation.

  // List<Widget> colorBlocks = [StatelessBlock(), StatelessBlock()];
  // List<Widget> colorBlocks = [StatefulBlockDupli(), StatefulBlockDupli()];
  // List<Widget> colorBlocks = [StatefulBlock(), StatefulBlock()];

  List<Widget> colorBlocks = [
    StatefulBlock(key: UniqueKey()),
    StatefulBlock(key: UniqueKey())
  ];

  // List<Widget> colorBlocks = [
  //   Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: StatefulBlock(key: UniqueKey()),
  //   ),
  //   Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: StatefulBlock(key: UniqueKey()),
  //   )
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swap Color Blocks'),
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: colorBlocks,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sentiment_very_satisfied),
        onPressed: () {
          setState(() {
            colorBlocks.insert(1, colorBlocks.removeAt(0));
          });
        },
      ),
    );
  }
}
