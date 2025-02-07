import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/balance_service.dart';
import '../main.dart';
import 'membership_provider.dart';

// 创建一个 BalanceService provider
final balanceServiceProvider = Provider<BalanceService>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  final service = BalanceService(prefs);
  ref.onDispose(() {
    service.dispose();
  });
  return service;
});

class BalanceNotifier extends StateNotifier<int> {
  final SharedPreferences _prefs;
  static const String _key = 'balance';

  BalanceNotifier(this._prefs) : super(0) {
    _loadBalance();
  }

  void _loadBalance() {
    state = _prefs.getInt(_key) ?? 0;
  }

  Future<void> addBalance(int amount) async {
    state = state + amount;
    await _prefs.setInt(_key, state);
  }

  Future<bool> deductBalance(int amount) async {
    if (state >= amount) {
      state = state - amount;
      await _prefs.setInt(_key, state);
      return true;
    }
    return false;
  }

  Future<void> setBalance(int amount) async {
    state = amount;
    await _prefs.setInt(_key, state);
  }
}

// 使用 StateNotifierProvider
final balanceProvider = StateNotifierProvider<BalanceNotifier, int>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return BalanceNotifier(prefs);
}); 