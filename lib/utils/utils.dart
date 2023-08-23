import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:map_app_task/res/color.dart';

class Utils{
  static void fieldFocus(BuildContext context, FocusNode currentNode, FocusNode nextFocus){
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message){
    Fluttertoast.showToast(msg: message,
    backgroundColor: AppColors.primaryColor,
    textColor: AppColors.primaryTextTextColor,
    fontSize: 16
    );
    
  }
}