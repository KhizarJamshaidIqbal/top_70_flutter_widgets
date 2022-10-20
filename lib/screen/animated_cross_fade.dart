// ignore_for_file: camel_case_types, implementation_imports, prefer_const_constructors, unnecessary_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class animated_cross_fade extends StatefulWidget {
  const animated_cross_fade({super.key});

  @override
  State<animated_cross_fade> createState() => _animated_cross_fadeState();
}

class _animated_cross_fadeState extends State<animated_cross_fade> {
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      reload();
    });
  }

  void reload() {
    setState(() {
      isFirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedCrossFade(
          duration: Duration(seconds: 2),
          firstChild: Container(
            height: 200,
            width: 200,
            color: Colors.blueGrey,
          ),
          secondChild: Image(
            image: AssetImage("Images/flutter.png"),
            height: 200,
            width: 200,
          ),
          crossFadeState:
              isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
    );
  }
}
