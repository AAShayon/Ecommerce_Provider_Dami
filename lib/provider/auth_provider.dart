// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:test_commerce/provider/firestore_service.dart';
//
// class AuthProvider extends ChangeNotifier {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//   final FirestoreProvider _firestoreService = FirestoreProvider(); // Instantiate the Firestore service
//
//   User? get currentUser => _auth.currentUser;
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
//       if (kDebugMode) {
//         print(error);
//       }
//       return null;
//     }
//   }
//
//   Future<User?> signInWithEmailAndPassword(
//       String email,
//       String password,
//       ) async {
//     try {
//       final UserCredential authResult = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//
//       final User? user = authResult.user;
//
//       // Additional logic to store user details in Firestore
//       if (user != null) {
//         await _firestoreService.addUserDetails(
//           userId: user.uid,
//           firstName: firstName,
//           lastName: lastName,
//           username: username,
//           email: email,
//           phone: phone,
//         );
//       }
//
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
//       await _auth.sendPasswordResetEmail(email: email);
//     } catch (error) {
//       if (kDebugMode) {
//         print(error);
//       }
//     }
//   }
// }
//


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:test_commerce/provider/firestore_service.dart';

class AuthenticationProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirestoreProvider _firestoreService = FirestoreProvider();
  String? verificationId; // Store the verification ID for phone authentication

  User? get currentUser => _auth.currentUser;

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn
          .signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential authResult = await _auth.signInWithCredential(
          credential);
      final User? user = authResult.user;
      if (user != null) {


        await _firestoreService.addUserDetails(userId: user.uid,
            firstName: user.displayName?.split(' ')[0] ?? '',
            lastName: user.displayName?.split(' ')[1] ?? '',
            username: user.displayName ?? '',
            email:user.email ?? '',
            phone:user.phoneNumber ?? '', profilePhoto:user.photoURL ?? ''
        );
      }
      return user;
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return null;
    }
  }

  Future<User?> signUpWithEmailAndPassword(String firstName,
      String lastName,
      String username,
      String email,
      String phone,
      String password,) async {
    try {
      final UserCredential authResult = await _auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final User? user = authResult.user;

      if (user != null) {
        await _firestoreService.addUserDetails(
          userId: user.uid,
          firstName: firstName,
          lastName: lastName,
          username: username,
          email: email,
          phone: phone, profilePhoto: '',
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

  Future<User?> signInWithEmailOrPhoneAndPassword(String emailOrPhone,
      String password,) async {
    try {
      UserCredential authResult;

      if (emailOrPhone.contains('@')) {
        authResult = await _auth.signInWithEmailAndPassword(
          email: emailOrPhone,
          password: password,
        );
      } else {
        await sendOtpToPhoneNumber(emailOrPhone);

        String enteredOtp = await promptUserForOtp();

        AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: verificationId!,
          smsCode: enteredOtp,
        );

        authResult = await _auth.signInWithCredential(phoneAuthCredential);
      }

      final User? user = authResult.user;
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

  Future<void> sendOtpToPhoneNumber(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  Future<String> promptUserForOtp() async {
    // Simulate prompting user for OTP
    // Replace this with actual user input logic
    return '123456';
  }

  void verificationCompleted(PhoneAuthCredential phoneAuthCredential) {
    // Handle the case where the phone number is automatically verified
    if (kDebugMode) {
      print('Verification completed automatically: ${phoneAuthCredential
          .smsCode}');
    }
  }

  void verificationFailed(FirebaseAuthException authException) {
    // Handle the case where phone number verification fails
    if (kDebugMode) {
      print('Verification failed: ${authException.message}');
    }
  }

  void codeSent(String verificationId, int? forceResendingToken) {
    // Handle the case where the OTP code is sent to the user
    this.verificationId = verificationId;
    if (kDebugMode) {
      print('OTP code sent to the user');
    }
  }

  void codeAutoRetrievalTimeout(String verificationId) {
    // Handle the case where OTP auto-retrieval times out
    if (kDebugMode) {
      print('OTP retrieval timed out');
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      await googleSignIn.signOut();
      verificationId = null; // clear verificationId
      notifyListeners();
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }

  Future<void> updateUserDetails({
    required String userId,
    required String firstName,
    required String lastName,
    required String username,
    required String phone,
  }) async {
    try {
      await _firestoreService.updateUserDetails(
        userId: userId,
        firstName: firstName,
        lastName: lastName,
        username: username,
        phone: phone,
      );

      notifyListeners();
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }

}
