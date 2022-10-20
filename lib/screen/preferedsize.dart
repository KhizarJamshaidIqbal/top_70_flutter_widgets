// ignore_for_file: implementation_imports, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:top_70_flutter_widgets/screen/pop_up.dart';

import 'bottomsheet.dart';
import 'long_press_draggable.dart';

class OnAppBarWidget extends StatefulWidget {
  const OnAppBarWidget({super.key});

  @override
  State<OnAppBarWidget> createState() => _OnAppBarWidgetState();
}

class _OnAppBarWidgetState extends State<OnAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(
        height: 100.0,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[Colors.redAccent, Colors.orangeAccent])),
        child: SafeArea(
            child: Center(
          child: ListTile(
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pop_up_message(),
                      ));
                },
                icon: Icon(
                  Icons.keyboard_double_arrow_left_sharp,
                  color: Colors.white,
                ),
              ),
              title: Text(
                "Custom App Bar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 20,
                ),
                color: Colors.white,
              )),
        )),
      ),
    ),
    body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 610),
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
                              builder: (context) => BottomSheets(),
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
                              builder: (context) => long_press_draggable(),
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
