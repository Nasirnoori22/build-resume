import 'package:build_resume/models/users_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  var user = <User>{}.obs;
  var isLoggedIn = false.obs;

  @override
  void onInit() async {
    if (await googleSignIn.isSignedIn()) {
      user.assign(FirebaseAuth.instance.currentUser!);
      isLoggedIn.value = true;
    }

    super.onInit();
  }

  bool get isLoggedInValue => isLoggedIn.value;

  void setUser(User user) {
    this.user.assign(user);
    isLoggedIn.value = true;
  }

  // Future<void> createUser(
  //     Users user, uid, BuildContext context, Type buildContext) async {
  //   // create a user in firestore if not exists and set the document id to the user uid
  //   var userRef = FirebaseFirestore.instance.collection('users').doc(user.uid);
  //   var userSnapshot = await userRef.get();

  //   if (!userSnapshot.exists) {
  //     await FirebaseFirestore.instance.collection('users').doc(user.uid).set(
  //       {
  //         'uid': user.uid,
  //         'email': user.email,
  //         'password': user,
  //       },
  //     );
  //   }
  // }

  Future<void> logout() async {
    Get.offNamed('/login');

    await FirebaseAuth.instance.signOut();
    googleSignIn.signOut();

    isLoggedIn.value = false;
  }
}
