// ignore_for_file: camel_case_types, implementation_imports, prefer_const_constructors, unused_import, file_names

import 'package:flutter/material.dart';
import 'package:top_70_flutter_widgets/screen/animated_cross_fade.dart';
import 'package:top_70_flutter_widgets/screen/intrective_viewer.dart';
import 'package:top_70_flutter_widgets/screen/pop_up.dart';
import 'package:top_70_flutter_widgets/screen/reorder_able_list_view.dart';

import 'flutter_widget_08.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final List<int> iteams = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Text("Welcome to Home!!!"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 710),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 20,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Media_Querys(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      )),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 20,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => pop_up_message(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
