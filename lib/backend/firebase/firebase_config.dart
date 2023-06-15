import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCMRoijuJ9rfQyFnAqhL68PnJMuukUTV_Y",
            authDomain: "spitsuserdata.firebaseapp.com",
            projectId: "spitsuserdata",
            storageBucket: "spitsuserdata.appspot.com",
            messagingSenderId: "462050892519",
            appId: "1:462050892519:web:710c34bf69c4898d71e042",
            measurementId: "G-EB7CS2GLNX"));
  } else {
    await Firebase.initializeApp();
  }
}
