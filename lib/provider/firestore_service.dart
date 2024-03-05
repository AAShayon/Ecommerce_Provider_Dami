import 'package:cloud_firestore/cloud_firestore.dart';

// class FirestoreService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   Future<int> getUserCount() async {
//     try {
//       QuerySnapshot querySnapshot = await _firestore.collection('users').get();
//       return querySnapshot.size;
//     } catch (error) {
//       print(error);
//       return 0;
//     }
//   }
// }
import 'package:flutter/material.dart';

class FirestoreProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<int> getUserCount() async {
    try {
      QuerySnapshot querySnapshot = await _firestore.collection('users').get();
      return querySnapshot.size;
    } catch (error) {
      print(error);
      return 0;
    }
  }
  Future<void> addUserDetails({
    required String userId,
    required String firstName,
    required String lastName,
    required String username,
    required String email,
    required String phone,
  }) async {
    try {
      await _firestore.collection('users').doc(userId).set({
        'firstName': firstName,
        'lastName': lastName,
        'username': username,
        'email': email,
        'phone': phone,
        // Add other user details as needed
      });

      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}

