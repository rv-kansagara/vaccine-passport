import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/foundation.dart';

class VaccinePassportProvider with ChangeNotifier {
  final _firebaseAuth = FirebaseAuth.instance;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  User? get currentUser => _firebaseAuth.currentUser ?? null;

  final _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot?> get userInfo {
    return _firestore.collection('vaccine-passport').snapshots();
  }

  Future<UserCredential?> signIn({
    required String email,
    required String password,
  }) async {
    _isLoading = true;
    notifyListeners();
    try {
      final UserCredential? _user = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return _user ?? null;
    } catch (error) {
      throw error;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<UserCredential?> signUp({
    required String email,
    required File? userImage,
    required Map<String, dynamic> data,
  }) async {
    _isLoading = true;
    notifyListeners();
    try {
      final UserCredential? _user =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: Random().nextInt(100000000).toString(),
      );

      var ref = FirebaseStorage.instance
          .ref()
          .child('user_images')
          .child(_user!.user!.uid + '.jpg');

      ref.putFile(userImage!).whenComplete(() => {
            FirebaseFirestore.instance
                .collection('vaccine-passport')
                .doc(_user.user!.uid)
                .set(data),
          });

      return _user;
    } catch (error) {
      throw error;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<UserCredential?> signOut() async {
    await _firebaseAuth.signOut();
  }
}
