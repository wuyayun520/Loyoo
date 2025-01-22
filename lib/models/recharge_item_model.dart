class RechargeItemModel {
  final String coin;
  final String gift;
  final String rmb;
  final bool isFirst;
  final String img;
  final String corner;
  final String desc;
  final int shopPrice;
  final String productId;

  const RechargeItemModel({
    required this.coin,
    required this.gift,
    required this.rmb,
    required this.isFirst,
    required this.img,
    required this.corner,
    required this.desc,
    required this.shopPrice,
    required this.productId,
  });

  factory RechargeItemModel.fromJson(Map<String, dynamic> json) {
    return RechargeItemModel(
      coin: json['coin'] as String,
      gift: json['gift'] as String,
      rmb: json['rmb'] as String,
      isFirst: json['isFirst'] as bool,
      img: json['img'] as String,
      corner: json['corner'] as String,
      desc: json['desc'] as String,
      shopPrice: json['shopPrice'] as int,
      productId: json['productId'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'coin': coin,
    'gift': gift,
    'rmb': rmb,
    'isFirst': isFirst,
    'img': img,
    'corner': corner,
    'desc': desc,
    'shopPrice': shopPrice,
    'productId': productId,
  };
} 