import 'package:shared_preferences/shared_preferences.dart';

class ProgressManager {
  static Future<double> getCollectiveProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double reactProgress = prefs.getDouble('reactGuidePercentage') ?? 0.0;
    double angularProgress = prefs.getDouble('angularGuidePercentage') ?? 0.0;

    return (reactProgress + angularProgress) / 2;
  }

  static void updateReactProgress(double newProgress) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('reactGuidePercentage', newProgress);
  }

  static void updateAngularProgress(double newProgress) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('angularGuidePercentage', newProgress);
  }

  // Other methods for loading and saving progress can be added here
}
