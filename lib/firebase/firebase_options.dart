
// firebase_options.dart
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

class CustomFirebaseOptions {
  static FirebaseOptions get firebaseOptions => FirebaseOptions(
    apiKey: 'AIzaSyBsD-Foc4X0uDOrlv47aFt1DZOiQsxjo98',
    appId: '1:944733211622:android:4c0b14d752f87f0177e427',
    messagingSenderId: '944733211622',
    projectId: 'order-app-1341d',
    authDomain: 'order-app-1341d.firebaseapp.com' ,
    databaseURL: 'https://order-app-1341d-default-rtdb.asia-southeast1.firebasedatabase.app',
    // storageBucket: 'order-app-1341d.appspot.com'
    // Tambahkan parameter lain jika diperlukan
  );
}