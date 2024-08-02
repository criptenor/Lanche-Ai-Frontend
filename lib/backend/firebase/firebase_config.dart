import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB-LT8Axfbf60nu0wNbfSlFIUUbrRPbkL8",
            authDomain: "lanche-ai.firebaseapp.com",
            projectId: "lanche-ai",
            storageBucket: "lanche-ai.appspot.com",
            messagingSenderId: "385880414769",
            appId: "1:385880414769:web:e28e6c99fdeec99fbd5310",
            measurementId: "G-JZKY8QHSVD"));
  } else {
    await Firebase.initializeApp();
  }
}
