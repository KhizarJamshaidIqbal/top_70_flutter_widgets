// ignore_for_file: implementation_imports, camel_case_types, unnecessary_import, unused_import, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:top_70_flutter_widgets/screen/Home.dart';
import 'package:top_70_flutter_widgets/screen/reorder_able_list_view.dart';

import 'animated_cross_fade.dart';

class Intrective_Viewer extends StatefulWidget {
  const Intrective_Viewer({super.key});

  @override
  State<Intrective_Viewer> createState() => _Intrective_ViewerState();
}

class _Intrective_ViewerState extends State<Intrective_Viewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(double.infinity),
          // ignore: prefer_const_constructors
          child: Scaffold(
            appBar: AppBar(
              excludeHeaderSemantics: false,
              centerTitle: true,
              title: const Text("Intrective_Viewer"),
            ),
            body: Stack(
              children: [
                Center(
                  child: Text("Welcome on Intrective_Viewer Page!!!"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 620),
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
                                    builder: (context) => animated_cross_fade(),
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
                                    builder: (context) => reorder_able_list_view(),
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
          )),
    );
  }
}
