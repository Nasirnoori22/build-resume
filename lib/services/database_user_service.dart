import 'package:build_resume/models/personnel_details_model.dart';
import 'package:build_resume/models/users_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Stream<List<Users>> getuser() {
    return _firebaseFirestore.collection('users').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Users.fromSnapshot(doc)).toList();
    });
  }

  Future<void> adduser(Users personnelDetails) {
    return _firebaseFirestore.collection('users').add(personnelDetails.toMap());
  }

  Stream<List<Users>> getpersonnelDetails() {
    return _firebaseFirestore.collection('users').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Users.fromSnapshot(doc)).toList();
    });
  }

  Future<void> updateField(
    Users users,
    String field,
    dynamic newValue,
  ) {
    return _firebaseFirestore
        .collection('users')
        .where('uid', isEqualTo: users.uid)
        .get()
        .then(
          (querySnapshot) => {
            querySnapshot.docs.first.reference.update({field: newValue})
          },
        );
  }
}
