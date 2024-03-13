
import 'package:bloglinux/data/consts_firebase.dart';

class DistrosFirebase{
  static getDistros(){
    return firestore.collection("distribucion").snapshots();
  }
}

