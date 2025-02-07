import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MembershipState {
  final bool isSubscribed;
  final DateTime? expiryDate;
  final String? planType; // 'weekly' or 'monthly'

  const MembershipState({
    this.isSubscribed = false,
    this.expiryDate,
    this.planType,
  });

  bool get isValid => isSubscribed && expiryDate != null && expiryDate!.isAfter(DateTime.now());

  Map<String, dynamic> toJson() => {
    'isSubscribed': isSubscribed,
    'expiryDate': expiryDate?.toIso8601String(),
    'planType': planType,
  };

  factory MembershipState.fromJson(Map<String, dynamic> json) {
    return MembershipState(
      isSubscribed: json['isSubscribed'] ?? false,
      expiryDate: json['expiryDate'] != null ? DateTime.parse(json['expiryDate']) : null,
      planType: json['planType'],
    );
  }
}

class MembershipNotifier extends StateNotifier<MembershipState> {
  final SharedPreferences _prefs;
  static const String _key = 'membership_state';

  MembershipNotifier(this._prefs) : super(const MembershipState()) {
    _loadState();
  }

  void _loadState() {
    final String? jsonStr = _prefs.getString(_key);
    if (jsonStr != null) {
      try {
        final Map<String, dynamic> json = Map<String, dynamic>.from(
          jsonDecode(jsonStr)
        );
        state = MembershipState.fromJson(json);
      } catch (e) {
        print('Error loading membership state: $e');
      }
    }
  }

  Future<void> _saveState() async {
    try {
      final String jsonStr = jsonEncode(state.toJson());
      await _prefs.setString(_key, jsonStr);
    } catch (e) {
      print('Error saving membership state: $e');
    }
  }

  Future<void> updateSubscription({
    required bool isSubscribed,
    required DateTime? expiryDate,
    required String planType,
  }) async {
    state = MembershipState(
      isSubscribed: isSubscribed,
      expiryDate: expiryDate,
      planType: planType,
    );
    await _saveState();
  }

  Future<void> clearSubscription() async {
    state = const MembershipState();
    await _saveState();
  }
}

final membershipProvider = StateNotifierProvider<MembershipNotifier, MembershipState>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return MembershipNotifier(prefs);
});

// 创建一个 provider 来管理 SharedPreferences 实例
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Initialize this in your main.dart');
}); 