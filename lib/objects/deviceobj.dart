import 'package:flutter/material.dart';
//import "package:farmxv2/services/db.dart";

class deviceTile extends StatelessWidget {
  final String deviceId;
  final String userId;
  const deviceTile({Key? key, required this.deviceId, required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Card(
      child: ListTile(
        leading: const FlutterLogo(size: 56.0),
        title: Text(deviceId),
        subtitle: Text(userId),
        trailing: const Icon(Icons.more_vert),
        onTap: () {},
      ),
    ));
  }
}
