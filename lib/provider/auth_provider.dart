// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//
//   Future<User?> signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//       final GoogleSignInAuthentication googleSignInAuthentication =
//       await googleSignInAccount!.authentication;
//
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleSignInAuthentication.accessToken,
//         idToken: googleSignInAuthentication.idToken,
//       );
//
//       final UserCredential authResult = await _auth.signInWithCredential(credential);
//       final User? user = authResult.user;
//       return user;
//     } catch (error) {
//       print(error);
//       return null;
//     }
//   }
//
//   Future<User?> signInWithEmailAndPassword(String email, String password) async {
//     try {
//       final UserCredential authResult = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       final User? user = authResult.user;
//       return user;
//     } catch (error) {
//       print(error);
//       return null;
//     }
//   }
//   Future<void> resetPassword(String email) async {
//     try {
//       await _auth.sendPasswordResetEmail(email: email);
//     } catch (error) {
//       print(error);
//     }
//   }
//
//
// }
///---implementation
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// class AuthProvider extends ChangeNotifier {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//
//   User? get currentUser => _auth.currentUser;
//
//   Future<User?> signInWithGoogle() async {
//     try {
//       // Implement Google sign-in logic here
//       final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//       final GoogleSignInAuthentication googleSignInAuthentication =
//       await googleSignInAccount!.authentication;
//
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleSignInAuthentication.accessToken,
//         idToken: googleSignInAuthentication.idToken,
//       );
//
//       final UserCredential authResult = await _auth.signInWithCredential(credential);
//       final User? user = authResult.user;
//       notifyListeners();
//       return user;
//     } catch (error) {
//       if (kDebugMode) {
//         print(error);
//       }
//       return null;
//     }
//   }
//
//   Future<User?> signInWithEmailAndPassword(String email, String password) async {
//     try {
//       // Implement email/password sign-in logic here
//       final UserCredential authResult = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       final User? user = authResult.user;
//       notifyListeners();
//       return user;
//     } catch (error) {
//       if (kDebugMode) {
//         print(error);
//       }
//       return null;
//     }
//   }
//
//   Future<void> resetPassword(String email) async {
//     try {
//       // Implement password reset logic here
//       await _auth.sendPasswordResetEmail(email: email);
//       notifyListeners();
//     } catch (error) {
//       if (kDebugMode) {
//         print(error);
//       }
//     }
//   }
//   Future<User?> signUpWithEmailAndPassword(
//       String firstName, String lastName, String username,
//       String email, String phone, String password) async {
//     final user = await _auth.signUpWithEmailAndPassword(
//         firstName, lastName, username, email, phone, password);
//     try {
//       final UserCredential authResult = await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//         firstName :firstName,
//         lastName :lastName,
//         username :username,
//         email :email,
//         password :password,
//       );
//       final User? user = authResult.user;
//       notifyListeners();
//       return user;
//     }
//
//     notifyListeners();
//     return user;
//   }
//
//
//
// }
///---letest
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test_commerce/provider/firestore_service.dart';

class AuthProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirestoreProvider _firestoreProvider = FirestoreProvider(); // Instantiate the Firestore service

  User? get currentUser => _auth.currentUser;
  //
  // Future<User?> signUpWithEmailAndPassword(
  //     String firstName,
  //     String lastName,
  //     String username,
  //     String email,
  //     String phone,
  //     String password,
  //     ) async {
  //   try {
  //     final UserCredential authResult = await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //
  //     // Store user details in Firestore
  //     if (authResult.user != null) {
  //       final userId = authResult.user!.uid;
  //       await _firestoreService.addUserDetails(userId, firstName, lastName, email, phone);
  //     }
  //
  //     final User? user = authResult.user;
  //     notifyListeners();
  //     return user;
  //   } catch (error) {
  //     if (kDebugMode) {
  //       print(error);
  //     }
  //     return null;
  //   }
  // }
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
        await _firestoreProvider.addUserDetails(
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
}
