import 'package:build_resume/models/personnel_details_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Stream<List<PersonnelDetails>> getProducts() {
    return _firebaseFirestore
        .collection('products')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => PersonnelDetails.fromSnapshot(doc))
          .toList();
    });
  }

  Future<void> addProduct(PersonnelDetails personnelDetails) {
    return _firebaseFirestore
        .collection('personnel_information')
        .add(personnelDetails.toMap());
  }

  Stream<List<PersonnelDetails>> getpersonnelDetails() {
    return _firebaseFirestore
        .collection('personnel_information')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => PersonnelDetails.fromSnapshot(doc))
          .toList();
    });
  }

  Future<void> updateField(
    PersonnelDetails personnelDetails,
    String field,
    dynamic newValue,
  ) {
    return _firebaseFirestore
        .collection('personnel_information')
        .where('id', isEqualTo: personnelDetails.id)
        .get()
        .then(
          (querySnapshot) => {
            querySnapshot.docs.first.reference.update({field: newValue})
          },
        );
  }
}
