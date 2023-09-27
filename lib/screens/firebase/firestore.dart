import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDB {
  static saveUserInfo( String email, String password,) {
    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction.set(
          FirebaseFirestore.instance
              .collection("User")
              .doc(email.toLowerCase()),
          {
            "Email": email.toLowerCase(),
            "Password": password,
          });
    });
  }

  static updateUserInfo(String profilePicture, String name, String email,
      String mobile, String dob, String occupation) {
    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction
          .update(FirebaseFirestore.instance.collection("User").doc(email), {
        "profile_picture": profilePicture,
        "Name": name,
        "Mobile_Number": mobile,
        "dob": dob,
        "occupation": occupation,
      });
    });
  }

  static updateUserDob(
    String email,
    String dob,
  ) {
    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction
          .update(FirebaseFirestore.instance.collection("User").doc(email), {
        "dob": dob,
      });
    });
  }

  static updateUserCode(
    String email,
    int code,
  ) {
    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction
          .update(FirebaseFirestore.instance.collection("User").doc(email), {
        "code": code,
      });
    });
  }

  static saveLogin(String email) {
    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction
          .update(FirebaseFirestore.instance.collection("User").doc(email), {
        "session": "login",
      });
    });
  }

  static saveLogOut(String email) {
    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction
          .update(FirebaseFirestore.instance.collection("User").doc(email), {
        "session": "logout",
      });
    });
  }
}
