import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  static const String _usernameKey = 'username';
  static const String _avatarKey = 'user_avatar';
  final SharedPreferences _prefs;

  UserService(this._prefs);

  Future<String> getUsername() async {
    return _prefs.getString(_usernameKey) ?? 'Username not set';
  }

  Future<void> setUsername(String username) async {
    await _prefs.setString(_usernameKey, username);
  }

  Future<String?> getAvatar() async {
    return _prefs.getString(_avatarKey);
  }

  Future<void> setAvatar(String avatarPath) async {
    await _prefs.setString(_avatarKey, avatarPath);
  }
} 