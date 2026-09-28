import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDzWCIBGYayLIiTa5ibWjtt-jq532H6zSs",
            authDomain: "walk-with-me-live-wyp5dk.firebaseapp.com",
            projectId: "walk-with-me-live-wyp5dk",
            storageBucket: "walk-with-me-live-wyp5dk.firebasestorage.app",
            messagingSenderId: "898010401594",
            appId: "1:898010401594:web:b07d5c816ab5f417031e03",
            measurementId: "G-03DGB8ECSX"));
  } else {
    await Firebase.initializeApp();
  }
}
