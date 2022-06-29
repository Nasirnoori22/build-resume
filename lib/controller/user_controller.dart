import 'package:build_resume/controller/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  GoogleSignIn googleSignIn = GoogleSignIn();
  final AuthController _authController = Get.put(AuthController());

  @override
  void onInit() async {
    if (await googleSignIn.isSignedIn()) {
      Get.offNamed('/home');
    }

    super.onInit();
  }

  Future<void> login(BuildContext context) async {
    var user = await signInWithGoogle(context: context);

    if (user != null) {
      _authController.setUser(user);
      // await _authController.createUser(user);

      Get.offNamed('/home');
    }
  }

  Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        } else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }
    }

    return user;
  }

  // Future<void> _handleSignIn() async {
  //   try {
  //     await _googleSignIn.signIn();
  //   } catch (error) {
  //     print(error);
  //   }
  // }
}
