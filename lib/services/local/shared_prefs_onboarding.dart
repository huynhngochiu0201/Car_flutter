import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsOnboarding {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final String keyOnboarding = 'onboarding';

  Future<bool?> getOnboardingPath() async {
    SharedPreferences prefs = await _prefs;
    return prefs.getBool(keyOnboarding);
  }

  Future<void> saveOnboardingPath(bool onboarding) async {
    SharedPreferences prefs = await _prefs;
    prefs.setBool(keyOnboarding, onboarding);
  }
}
