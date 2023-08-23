import 'package:flutter/material.dart';

class CollectiveProgressProvider extends ChangeNotifier {
  double _collectiveProgress = 0.0;

  double get collectiveProgress => _collectiveProgress;

  void updateCollectiveProgress(double newProgress) {
    _collectiveProgress = newProgress;
    notifyListeners();
  }
}