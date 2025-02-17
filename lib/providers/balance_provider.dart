import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/balance_service.dart';
import '../main.dart';
import 'membership_provider.dart';
import 'dart:developer' as dev;

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
  final Ref _ref;
  static const String _key = 'balance';

  BalanceNotifier(this._prefs, this._ref) : super(0) {
    _loadBalance();
  }

  void _loadBalance() {
    state = _prefs.getInt(_key) ?? 10; // 设置初始余额为 10
    dev.log('Current balance loaded: $state', name: 'BalanceNotifier');
  }

  Future<void> addBalance(int amount) async {
    state = state + amount;
    await _prefs.setInt(_key, state);
    dev.log('Balance added: $amount, New balance: $state', name: 'BalanceNotifier');
  }

  Future<bool> deductBalance(int amount) async {
    dev.log('Attempting to deduct balance: $amount, Current balance: $state', name: 'BalanceNotifier');
    
    // 检查会员状态
    final membershipState = _ref.read(membershipProvider);
    if (membershipState.isValid) {
      dev.log('User is premium member, no need to deduct balance', name: 'BalanceNotifier');
      return true;
    }

    if (state >= amount) {
      state = state - amount;
      await _prefs.setInt(_key, state);
      dev.log('Balance deducted successfully. New balance: $state', name: 'BalanceNotifier');
      return true;
    }
    
    dev.log('Insufficient balance. Required: $amount, Current: $state', name: 'BalanceNotifier');
    return false;
  }

  Future<void> setBalance(int amount) async {
    state = amount;
    await _prefs.setInt(_key, state);
    dev.log('Balance set to: $amount', name: 'BalanceNotifier');
  }
}

// 使用 StateNotifierProvider
final balanceProvider = StateNotifierProvider<BalanceNotifier, int>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return BalanceNotifier(prefs, ref);
}); 