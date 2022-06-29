import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class PersonnelDetails extends Equatable {
  final int id;
  final String name;
  final String last_name;
  final String address;
  final String email;
  final String phone;

  PersonnelDetails(
      {required this.id,
      required this.name,
      required this.last_name,
      required this.address,
      required this.email,
      required this.phone});

  @override
  List<Object?> get props {
    return [id, name, last_name, address, phone, email];
  }

  PersonnelDetails copyWith({
    int? id,
    String? name,
    String? last_name,
    String? address,
    String? email,
    String? phone,
  }) {
    return PersonnelDetails(
        id: id ?? this.id,
        name: name ?? this.name,
        last_name: last_name ?? this.last_name,
        address: address ?? this.address,
        email: email ?? this.email,
        phone: phone ?? this.phone);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'lastname': last_name,
      'address': address,
      'email': email,
      'phone': phone,
    };
  }

  factory PersonnelDetails.fromSnapshot(DocumentSnapshot snap) {
    return PersonnelDetails(
        id: snap['id'],
        name: snap['name'],
        last_name: snap['last_name'],
        address: snap['address'],
        email: snap['email'],
        phone: snap['phone']);
  }
  String toJson() => json.encode(toMap());

  bool get Stringify => true;
}
