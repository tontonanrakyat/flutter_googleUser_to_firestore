import 'package:cloud_firestore/cloud_firestore.dart';

class SvFirestore {
  Firestore _firestore = Firestore.instance;

  createWithAutoDoc(String col, Map<String, dynamic> data) {
    _firestore.collection(col).document().setData(data);
  }

  createWithCustomDoc(
    String col,
    String doc,
    Map<String, dynamic> data,
    bool isMerge,
  ) {
    _firestore.collection(col).document(doc).setData(data, merge: isMerge);
  }

  read(String col, String doc) {
    _firestore.collection(col).document(doc).get().then((value) {
      print(value.data['']);
    });
  }

  update(String col, String doc, String field, String fieldX) {
    _firestore.collection(col).document(doc).updateData({field: fieldX});
  }

  delete(String col, String doc) {
    _firestore.collection(col).document(doc).delete();
  }
}
