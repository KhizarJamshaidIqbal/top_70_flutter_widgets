// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, camel_case_types, unused_import, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:top_70_flutter_widgets/screen/Home.dart';
import 'package:top_70_flutter_widgets/screen/pop_up.dart';
import 'package:top_70_flutter_widgets/screen/preferedsize.dart';
import 'package:top_70_flutter_widgets/screen/reorder_able_list_view.dart';

class Media_Querys extends StatefulWidget {
  const Media_Querys({super.key});

  @override
  State<Media_Querys> createState() => _Media_QuerysState();
}

class _Media_QuerysState extends State<Media_Querys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Width" + MediaQuery.of(context).size.width.toStringAsFixed(2)),
            Text("Height" + MediaQuery.of(context).size.height.toStringAsFixed(2)),
            Text("aspectRatio" + MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)),
             Text(MediaQuery.of(context).orientation.toString()),
          ],
        ),
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
                              builder: (context) => reorder_able_list_view(),
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
                              builder: (context) => home(),
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