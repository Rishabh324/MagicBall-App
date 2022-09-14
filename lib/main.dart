import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Text("Magic 8-Ball"),
          ),
          body: const Magicball(),
        ),
      ),
  );
}

class Magicball extends StatefulWidget {
  const Magicball({Key? key}) : super(key: key);


  @override
  State<Magicball> createState() => _MagicState();
}

class _MagicState extends State<Magicball> {

  var ballnum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            ballnum = Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$ballnum.png'),
      ),
    );
  }
}
