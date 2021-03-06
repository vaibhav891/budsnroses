import 'package:budsnroses/domain/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreAddress {
  final CollectionReference userCollection =
      Firestore.instance.collection('user');

  Future addAddress(Address address, String uid) async {
    try {
      await userCollection
          .document(uid)
          .collection('addresses')
          .add(address.toMap());
      return true;
    } catch (e) {
      return e.toString();
    }
  }

  Future<List<Address>> fetchAddresses(String uid) async {
    return userCollection
        .document(uid)
        .collection('addresses')
        .getDocuments()
        .then((value) =>
            value.documents.map((e) => Address.fromMap(e.data)).toList());
    // .then((value) {
    //   return value.documents.forEach((documentSnapshot) {
    //      Address.fromMap(documentSnapshot.data);
    //     });
    // });
  }
}
