import 'dart:developer';
import 'package:chattysimple/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCxgsByGKtZjE38dcFfxnQfLSbKokmUe7U",
            appId: "1:712497068578:android:f2fa3dd0283083c42a687b",
            messagingSenderId: "712497068578",
            projectId: "chattysimple-2818b") );
  } catch (e) {
    log('Firebase initialization error: $e');
  }
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashScreen(),
  ));
}
