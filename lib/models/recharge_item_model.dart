class RechargeItemModel {
  final String coin;
  final String price;
  final String productId;

  const RechargeItemModel({
    required this.coin,
    required this.price,
    required this.productId,
  });

  factory RechargeItemModel.fromJson(Map<String, dynamic> json) {
    return RechargeItemModel(
      coin: json['coin'] as String,
      price: json['price'] as String,
      productId: json['productId'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'coin': coin,
    'price': price,
    'productId': productId,
  };
} 