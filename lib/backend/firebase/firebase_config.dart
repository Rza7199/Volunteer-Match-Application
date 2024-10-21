import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB2NBgosVL2IG09OLZcJ7Wm-MrHA9Nt4SY",
            authDomain: "volunteer-match-vpf09l.firebaseapp.com",
            projectId: "volunteer-match-vpf09l",
            storageBucket: "volunteer-match-vpf09l.appspot.com",
            messagingSenderId: "62059142858",
            appId: "1:62059142858:web:bf0c1c32a66851446c1e33"));
  } else {
    await Firebase.initializeApp();
  }
}
