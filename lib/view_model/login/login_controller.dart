import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/utils/utils.dart';
import 'package:map_app_task/view_model/services/session_manager.dart';

class LoginController with ChangeNotifier{
  FirebaseAuth auth= FirebaseAuth.instance;
  
  bool _loading= false;
  bool get loading=> _loading;

  setLoading(bool value){
    _loading= value;
    notifyListeners();
  }
  void login(BuildContext context, email, String password)async{
    setLoading(true);
    try{
     auth.signInWithEmailAndPassword(email: email, password: password).then((value){
      SessionController().userId= value.user!.uid.toString();
      setLoading(false);
      Navigator.pushNamed(context, RouteName.BottomScreen);
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