import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class BalanceService {
  static const String _balanceKey = 'user_balance';
  final SharedPreferences _prefs;
  final _balanceController = StreamController<int>.broadcast();

  BalanceService(this._prefs) {
    // Initialize default balance
    if (!_prefs.containsKey(_balanceKey)) {
      _prefs.setInt(_balanceKey, 10); // Set default balance to 10
      _balanceController.add(10);
    } else {
      _balanceController.add(_prefs.getInt(_balanceKey)!);
    }
  }

  Stream<int> get balanceStream => _balanceController.stream;

  Future<int> getBalance() async {
    final balance = _prefs.getInt(_balanceKey) ?? 10;
    return balance;
  }

  Future<void> addBalance(int amount) async {
    final currentBalance = await getBalance();
    final newBalance = currentBalance + amount;
    await _prefs.setInt(_balanceKey, newBalance);
    _balanceController.add(newBalance);
  }

  Future<bool> deductBalance(int amount) async {
    final currentBalance = await getBalance();
    if (currentBalance >= amount) {
      final newBalance = currentBalance - amount;
      await _prefs.setInt(_balanceKey, newBalance);
      _balanceController.add(newBalance);
      return true;
    }
    return false;
  }

  Future<void> resetBalance() async {
    await _prefs.setInt(_balanceKey, 10);
    _balanceController.add(10);
  }

  void dispose() {
    _balanceController.close();
  }
} 