// ignore_for_file: implementation_imports, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:top_70_flutter_widgets/screen/Home.dart';
import 'package:top_70_flutter_widgets/screen/preferedsize.dart';

class long_press_draggable extends StatefulWidget {
  const long_press_draggable({super.key});

  @override
  State<long_press_draggable> createState() => _long_press_draggableState();
}

class _long_press_draggableState extends State<long_press_draggable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 710),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 20,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OnAppBarWidget(),
                              ));
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        )),
                  ),
                ),
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 20,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => home(),
                              ));
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
