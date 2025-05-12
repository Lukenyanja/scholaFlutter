import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAaR1Y9J92cdqkrZWurK5YouhN-mETUWDU",
            authDomain: "schola-vu.firebaseapp.com",
            projectId: "schola-vu",
            storageBucket: "schola-vu.firebasestorage.app",
            messagingSenderId: "48737815277",
            appId: "1:48737815277:web:b8515109575ef697f11ae4",
            measurementId: "G-ZZWCH0392Z"));
  } else {
    await Firebase.initializeApp();
  }
}
