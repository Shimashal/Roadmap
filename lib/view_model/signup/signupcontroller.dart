import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/utils/utils.dart';
import 'package:map_app_task/view_model/services/session_manager.dart';
class SignUpController with ChangeNotifier{
  FirebaseAuth auth= FirebaseAuth.instance;
  DatabaseReference ref= FirebaseDatabase.instance.ref().child('User');
  bool _loading= false;
  bool get loading=> _loading;

  setLoading(bool value){
    _loading= value;
    notifyListeners();
  }
   void signup(BuildContext context, String username, String email, String password,String confirmPass) async {
    setLoading(true);

    try {
      final result = await auth.createUserWithEmailAndPassword(email: email, password: password);

      SessionController().userId = result.user!.uid.toString();

      ref.child(result.user!.uid.toString()).set({
        'uid': result.user!.uid.toString(),
        'email': result.user!.email.toString(),
        'username': username,
        'confirmPass': confirmPass,
        'profile':"",
      }).then((_) {
        setLoading(false);
        // When registered, navigate here
        Navigator.pushNamed(context, RouteName.otpPhoneScreen);
        
      }).catchError((error) {
        setLoading(false);
        Utils.toastMessage(error.toString());
      });

      Utils.toastMessage('Account Created Successfully.');
    } catch (e) {
      setLoading(false);
      if (e is FirebaseAuthException) {
        if (e.code == 'weak-password') {
          Utils.toastMessage('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          Utils.toastMessage('The account already exists for that email.');
        } else if (e.code == 'invalid-email') {
          Utils.toastMessage('The email address is badly formatted.');
        } else {
          Utils.toastMessage('Sign up failed. Please try again later.');
        }
      } else {
        Utils.toastMessage(e.toString());
      }
    }
  }
} 
