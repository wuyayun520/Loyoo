import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'pages/main/main_page.dart';
import 'providers/balance_provider.dart';
import 'providers/membership_provider.dart';
import 'services/apple_payment_service.dart';
import 'services/subscription_service.dart';

Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.example.app.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  
  WidgetsFlutterBinding.ensureInitialized();
  
  final prefs = await SharedPreferences.getInstance();
  
  await _initInAppPurchase();
  
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: const MyApp(),
    ),
  );
}

Future<void> _initInAppPurchase() async {
  final iap = InAppPurchase.instance;
  final bool available = await iap.isAvailable();
  if (!available) {
    print('In-app purchases not available');
    return;
  }

  // 设置购买流监听器
  final Stream<List<PurchaseDetails>> purchaseUpdated = iap.purchaseStream;
  purchaseUpdated.listen((purchaseDetailsList) {
    _listenToPurchaseUpdated(purchaseDetailsList);
  }, onError: (error) {
    print('Purchase stream error: $error');
  });
}

// 判断是否是内购ID
bool _isInAppPurchaseId(String productId) {
  final inAppPurchaseIds = [
    'Loyoo2', 'Loyoo5', 'Loyoo9', 'Loyoo19',
    'Loyoo49', 'Loyoo99', 'Loyoo159', 'Loyoo239'
  ];
  return inAppPurchaseIds.contains(productId);
}

// 判断是否是订阅ID
bool _isSubscriptionId(String productId) {
  final subscriptionIds = ['loyoo.weekly', 'loyoo.monthly.com'];
  return subscriptionIds.contains(productId);
}

void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
  purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
    try {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        print('Purchase pending: ${purchaseDetails.productID}');
      } else if (purchaseDetails.status == PurchaseStatus.error) {
        print('Purchase error: ${purchaseDetails.error}');
        // 确保错误的购买被完成
        await InAppPurchase.instance.completePurchase(purchaseDetails);
      } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                 purchaseDetails.status == PurchaseStatus.restored) {
        print('Purchase completed/restored: ${purchaseDetails.productID}');
        
        // 验证购买
        if (purchaseDetails.pendingCompletePurchase) {
          final prefs = await SharedPreferences.getInstance();
          
          try {
            // 严格区分内购和订阅处理
            if (_isSubscriptionId(purchaseDetails.productID)) {
              // 订阅处理
              print('Handling subscription purchase: ${purchaseDetails.productID}');
              final subscriptionService = SubscriptionService();
              await subscriptionService.handleSuccessfulPurchase(purchaseDetails, prefs);
            } else if (_isInAppPurchaseId(purchaseDetails.productID)) {
              // 内购处理
              print('Handling consumable purchase: ${purchaseDetails.productID}');
              final applePaymentService = ApplePaymentService(prefs);
              await applePaymentService.handleSuccessfulPurchase(purchaseDetails);
            } else {
              print('Unknown product type: ${purchaseDetails.productID}');
            }
          } catch (e) {
            print('Error processing purchase: $e');
          } finally {
            // 无论处理是否成功，都要完成购买
            print('Completing purchase transaction');
            await InAppPurchase.instance.completePurchase(purchaseDetails);
          }
        }
      } else if (purchaseDetails.status == PurchaseStatus.canceled) {
        print('Purchase canceled: ${purchaseDetails.productID}');
        await InAppPurchase.instance.completePurchase(purchaseDetails);
      }
    } catch (e) {
      print('Error handling purchase update: $e');
      // 确保在发生错误时也完成购买
      try {
        await InAppPurchase.instance.completePurchase(purchaseDetails);
      } catch (completionError) {
        print('Error completing purchase after error: $completionError');
      }
    }
  });
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lush',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MainPage(),
    );
  }
}
