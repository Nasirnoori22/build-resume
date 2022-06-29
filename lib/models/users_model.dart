import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  final int uid;
  final String email;
  final String password;

  Users({
    required this.uid,
    required this.email,
    required this.password,
  });

  Users copyWith({
    int? uid,
    String? email,
    String? password,
  }) {
    return Users(
        uid: uid ?? this.uid,
        email: email ?? this.email,
        password: password ?? this.password);
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'password': password,
    };
  }

  factory Users.fromSnapshot(DocumentSnapshot snap) {
    return Users(
      uid: snap['id'],
      email: snap['email'],
      password: snap['password'],
    );
  }
}
