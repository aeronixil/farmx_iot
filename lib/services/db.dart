import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmx_iot/services/models.dart';
import "package:rxdart/rxdart.dart";

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  //read all documents and their data from firestore

  Future<List<Device1>> getAllDevice1() async {
    var ref = _db.collection("devices");
    var snapshot = await ref.get();
    var data = snapshot.docs.map((s) => s.data());

    //the below device1s refers to a list of all documents of device1s
    var devices = data.map((d) => Device1.fromJson(d));
    return devices.toList();
  }
}
