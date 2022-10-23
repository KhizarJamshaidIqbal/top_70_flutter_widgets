// ignore_for_file: implementation_imports, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, unused_import, unused_field, prefer_final_fields, unnecessary_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:top_70_flutter_widgets/screen/Home.dart';
import 'package:top_70_flutter_widgets/screen/animated_cross_fade.dart';
import 'package:top_70_flutter_widgets/screen/preferedsize.dart';

class long_press_draggable extends StatefulWidget {
  const long_press_draggable({super.key});

  @override
  State<long_press_draggable> createState() => _long_press_draggableState();
}

class _long_press_draggableState extends State<long_press_draggable> {
  Offset _offset = Offset(100, 320);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: _offset.dy,
            left: _offset.dx,
            child: LongPressDraggable(
              feedback: Image(
                image: AssetImage("Images/flutter.png"),
                height: 200,
                color: Colors.orange,
                colorBlendMode: BlendMode.colorDodge,
              ),
              child: Image(
                image: AssetImage("Images/flutter.png"),
                height: 200,
              ),
              onDragEnd: (details) {
                setState(() {
                  var constraints;
                  double adjustment = MediaQuery.of(context).size.height -
                      constraints.maxHeight;
                  _offset =
                      Offset(details.offset.dx, details.offset.dy - adjustment);
                });
              },
            ),
          ),
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
                                builder: (context) => animated_cross_fade(),
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
