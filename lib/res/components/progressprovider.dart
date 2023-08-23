import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProgressProvider extends ChangeNotifier {
  double _reactProgress = 0.0;
  double _angularProgress = 0.0;
  double _pythonProgress = 0.0;
  double _javaScriptProgress = 0.0;
  double _aspNetProgress = 0.0;
  double _flutterProgress = 0.0;

  double get reactProgress => _reactProgress;
  double get angularProgress => _angularProgress;
  double get pythonProgress => _pythonProgress;
  double get javaScriptProgress => _javaScriptProgress;
  double get aspNetProgress => _aspNetProgress;
  double get flutterProgress => _flutterProgress;

  void updateReactProgress(double progress) {
    _reactProgress = progress;
    notifyListeners();
    saveProgressCircular();
  }

  void updateAngularProgress(double progress) {
    _angularProgress = progress;
    notifyListeners();
    saveProgressCircular();
  }
  void updatePythonProgress(double progress) {
    _pythonProgress = progress;
    notifyListeners();
    saveProgressCircular();
  }
   void updateJSProgress(double progress) {
    _javaScriptProgress = progress;
    notifyListeners();
    saveProgressCircular();
  }
   void updateFlutterProgress(double progress) {
    _flutterProgress = progress;
    notifyListeners();
     saveProgressCircular();
  }
   void updateASPNETcoreProgress(double progress) {
    _aspNetProgress = progress;
    notifyListeners();
    saveProgressCircular();
  }

  double calculateCombinedProgress() {
    return (_reactProgress + _angularProgress+_pythonProgress+_javaScriptProgress+_aspNetProgress+_flutterProgress) / 6;
  }

  void saveProgressCircular() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setDouble('flutterProgress', _flutterProgress);
  await prefs.setDouble('JSProgress', _javaScriptProgress);
  await prefs.setDouble('ASPNetProgress', _aspNetProgress);
  await prefs.setDouble('angularProgress', _angularProgress);
  await prefs.setDouble('pythonProgress', _pythonProgress);
  await prefs.setDouble('reactProgress', _reactProgress);
 
}

void loadProgressCircular() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  _flutterProgress = prefs.getDouble('flutterProgress') ?? 0.0;
  _javaScriptProgress = prefs.getDouble('JSProgress') ?? 0.0;
  _aspNetProgress = prefs.getDouble('ASPNetProgress') ?? 0.0;
  _angularProgress = prefs.getDouble('angularProgress') ?? 0.0;
  _pythonProgress = prefs.getDouble('pythonProgress') ?? 0.0;
  _reactProgress = prefs.getDouble('reactProgress') ?? 0.0;
 
}
ProgressProvider() {
  loadProgressCircular();
}
}

