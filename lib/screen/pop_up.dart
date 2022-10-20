// ignore_for_file: implementation_imports, camel_case_types, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:top_70_flutter_widgets/screen/Home.dart';
import 'package:top_70_flutter_widgets/screen/preferedsize.dart';

import 'bottomsheet.dart';

class pop_up_message extends StatefulWidget {
  const pop_up_message({super.key});

  @override
  State<pop_up_message> createState() => _pop_up_messageState();
}

class _pop_up_messageState extends State<pop_up_message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
        child: ElevatedButton(
          child: const Text("Click here..."),
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
              content: const Text("Subscribe"),
              leading: const Icon(Icons.notifications_active_outlined),
              padding: const EdgeInsets.all(20),
              elevation: 2,
              backgroundColor: Colors.white12,
              actions: [
                TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child: const Text("Dismiss"))
              ],
            ));
          },
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
                              builder: (context) => home(),
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
                              builder: (context) => BottomSheets(),
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
      )
    );
  }
}
