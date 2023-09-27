

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FireBaseAuth{
  static signup(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
          Fluttertoast.showToast(msg: "Successfully SingUp");
    print('/////// Success  signup////////');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      Fluttertoast.showToast(msg: "The password provided is too weak.");
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      Fluttertoast.showToast(msg: "The account already exists for that email.");
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

static signin(String email,String password) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);  

      Fluttertoast.showToast(msg: "Successfully login");
       print("LOG IN");
    
   
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      Fluttertoast.showToast(msg: "No user found for that email.");
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Wrong password provided for that user.");
      print('Wrong password provided for that user.');
    }
  }
}




}
signup(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
          Fluttertoast.showToast(msg: "Successfully SingUp");
    print('/////// Success  signup////////');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      Fluttertoast.showToast(msg: "The password provided is too weak.");
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      Fluttertoast.showToast(msg: "The account already exists for that email.");
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

signin(String email,String password) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);  

         
       print("LOG IN");
    
   
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      Fluttertoast.showToast(msg: "No user found for that email.");
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Wrong password provided for that user.");
      print('Wrong password provided for that user.');
    }
  }
}
