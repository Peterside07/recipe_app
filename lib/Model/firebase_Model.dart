
import 'package:firebase_auth/firebase_auth.dart';

class firebaseState {
  bool isLoading;
  FirebaseUser user;

  firebaseState({
    this.isLoading = false,
    this.user,
});
}