// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:top_70_flutter_widgets/screen/Home.dart';
import 'package:top_70_flutter_widgets/screen/animated_cross_fade.dart';
import 'package:top_70_flutter_widgets/screen/bottomsheet.dart';
import 'package:top_70_flutter_widgets/screen/long_press_draggable.dart';
import 'package:top_70_flutter_widgets/screen/pop_up.dart';
import 'package:top_70_flutter_widgets/screen/preferedsize.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '72 Flutter Widgets',
      // home: home(),
      home: animated_cross_fade(),
    );
  }
}
