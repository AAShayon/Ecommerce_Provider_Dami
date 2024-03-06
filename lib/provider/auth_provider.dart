import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test_commerce/provider/firestore_service.dart';

class AuthProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirestoreProvider _firestoreService = FirestoreProvider(); // Instantiate the Firestore service

  User? get currentUser => _auth.currentUser;

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential authResult = await _auth.signInWithCredential(credential);
      final User? user = authResult.user;
      return user;
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return null;
    }
  }

  Future<User?> signUpWithEmailAndPassword(
      String firstName,
      String lastName,
      String username,
      String email,
      String phone,
      String password,
      ) async {
    try {
      final UserCredential authResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final User? user = authResult.user;

      // Additional logic to store user details in Firestore
      if (user != null) {
        await _firestoreService.addUserDetails(
          userId: user.uid,
          firstName: firstName,
          lastName: lastName,
          username: username,
          email: email,
          phone: phone,
        );
      }

      notifyListeners();
      return user;
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return null;
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }
}

