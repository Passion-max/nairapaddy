import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCx3Gex4eXqQ8uw3mXDn0ztjqib1gvp3t0",
            authDomain: "nairapaddy-7ee40.firebaseapp.com",
            projectId: "nairapaddy-7ee40",
            storageBucket: "nairapaddy-7ee40.appspot.com",
            messagingSenderId: "1012007341392",
            appId: "1:1012007341392:web:87ade50b6e5a0e30b37055",
            measurementId: "G-TJ39ZFTV43"));
  } else {
    await Firebase.initializeApp();
  }
}
