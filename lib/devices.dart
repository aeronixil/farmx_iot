// ignore_for_file: implementation_imports, unnecessary_import

//this is the main homepage/ home directory for the app

import 'package:farmx_iot/objects/deviceobj.dart';
import 'package:farmx_iot/services/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'services/db.dart';

import 'services/models.dart';
//import 'services/models.g.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FarmX Smart")),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.wb_twilight), label: "devices"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add device"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          ),
        ],
        currentIndex: 0,
        onTap: (int idx) {
          if (idx == 2) {
            Navigator.pushNamed(context, "/profile_page");
          }
          if (idx == 1) {
            Navigator.pushNamed(context, "/add_device_page");
          }
        },
      ),
      body: FutureBuilder<List<Device1>>(
        // maddness begins here
        future: FirestoreService().getAllDevice1(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("loading ");
          } else if (snapshot.hasData) {
            var Device1 = snapshot.data!;
          } else if (snapshot.hasError) {
            return const Text("errorinator ");
          }
          return Container();
        },
      ),
    );
  }
}


// ListView.builder(
//           itemCount: 200,
//           //scrollDirection: Axis.vertical,
//           //shrinkWrap: true,
//           itemBuilder: (BuildContext context, int index) {
//             return (deviceTile(
//               deviceId: ("device id"),
//               userId: ("user id"),
//             ));
//           }),
