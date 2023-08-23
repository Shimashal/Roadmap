import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/utils/utils.dart';

class ForgotPassController with ChangeNotifier{
  FirebaseAuth auth= FirebaseAuth.instance;
  
  bool _loading= false;
  bool get loading=> _loading;

  setLoading(bool value){
    _loading= value;
    notifyListeners();
  }
  void forgotPassword(BuildContext context, email)async{
    setLoading(true);
    try{
     auth.sendPasswordResetEmail(email: email).then((value){
      setLoading(false);
      Navigator.pushNamed(context, RouteName.loginView);
      Utils.toastMessage('Please check your email to recover your password.');
     }).onError((error, stackTrace){
      setLoading(false);
      Utils.toastMessage(error.toString());
     });
    }
    catch(e){
       setLoading(false);
      Utils.toastMessage(e.toString());
    }
  }
}