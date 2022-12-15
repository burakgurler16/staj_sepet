///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class SepetItems {
/*
{
  "id": 5880,
  "product_id": 1587,
  "qty": 2,
  "price": 56.5,
  "total": 113,
  "name": "MYS-886 - LION KING İKİLİ TAKIM - GRİ",
  "variant": "AGRİ",
  "image": "https://www.overdokids.com/resimler/med_d48085c2ee5f09206c9f8b7168e9de14.jpg",
  "package_qty": 4,
  "currency": "₺",
  "isError": true,
  "errorMessage": "Ürün kaldırılmış"
} 
*/

  int? id;
  int? productId;
  int? qty;
  double? price;
  int? total;
  String? name;
  String? variant;
  String? image;
  int? packageQty;
  String? currency;
  bool? isError;
  String? errorMessage;

  SepetItems({
    this.id,
    this.productId,
    this.qty,
    this.price,
    this.total,
    this.name,
    this.variant,
    this.image,
    this.packageQty,
    this.currency,
    this.isError,
    this.errorMessage,
  });
  SepetItems.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    productId = json['product_id']?.toInt();
    qty = json['qty']?.toInt();
    price = json['price']?.toDouble();
    total = json['total']?.toInt();
    name = json['name']?.toString();
    variant = json['variant']?.toString();
    image = json['image']?.toString();
    packageQty = json['package_qty']?.toInt();
    currency = json['currency']?.toString();
    isError = json['isError'];
    errorMessage = json['errorMessage']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['product_id'] = productId;
    data['qty'] = qty;
    data['price'] = price;
    data['total'] = total;
    data['name'] = name;
    data['variant'] = variant;
    data['image'] = image;
    data['package_qty'] = packageQty;
    data['currency'] = currency;
    data['isError'] = isError;
    data['errorMessage'] = errorMessage;
    return data;
  }
}

class SepetDetails {
/*
{
  "name": "KDV",
  "value": "%8",
  "strike_through": false
} 
*/

  String? name;
  String? value;
  bool? strikeThrough;

  SepetDetails({
    this.name,
    this.value,
    this.strikeThrough,
  });
  SepetDetails.fromJson(Map<String, dynamic> json) {
    name = json['name']?.toString();
    value = json['value']?.toString();
    strikeThrough = json['strike_through'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['value'] = value;
    data['strike_through'] = strikeThrough;
    return data;
  }
}

class Sepet {
/*
{
  "id": 5880,
  "qty2": 9,
  "qty": 3,
  "total": 1303,
  "currency": "₺",
  "subtotal": 1303,
  "isError": true,
  "errorMessage": "",
  "details": [
    {
      "name": "KDV",
      "value": "%8",
      "strike_through": false
    }
  ],
  "items": [
    {
      "id": 5880,
      "product_id": 1587,
      "qty": 2,
      "price": 56.5,
      "total": 113,
      "name": "MYS-886 - LION KING İKİLİ TAKIM - GRİ",
      "variant": "AGRİ",
      "image": "https://www.overdokids.com/resimler/med_d48085c2ee5f09206c9f8b7168e9de14.jpg",
      "package_qty": 4,
      "currency": "₺",
      "isError": true,
      "errorMessage": "Ürün kaldırılmış"
    }
  ]
} 
*/

  int? id;
  int? qty2;
  int? qty;
  int? total;
  String? currency;
  int? subtotal;
  bool? isError;
  String? errorMessage;
  List<SepetDetails?>? details;
  List<SepetItems?>? items;

  Sepet({
    this.id,
    this.qty2,
    this.qty,
    this.total,
    this.currency,
    this.subtotal,
    this.isError,
    this.errorMessage,
    this.details,
    this.items,
  });
  Sepet.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    qty2 = json['qty2']?.toInt();
    qty = json['qty']?.toInt();
    total = json['total']?.toInt();
    currency = json['currency']?.toString();
    subtotal = json['subtotal']?.toInt();
    isError = json['isError'];
    errorMessage = json['errorMessage']?.toString();
    if (json['details'] != null) {
      final v = json['details'];
      final arr0 = <SepetDetails>[];
      v.forEach((v) {
        arr0.add(SepetDetails.fromJson(v));
      });
      details = arr0;
    }
    if (json['items'] != null) {
      final v = json['items'];
      final arr0 = <SepetItems>[];
      v.forEach((v) {
        arr0.add(SepetItems.fromJson(v));
      });
      items = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['qty2'] = qty2;
    data['qty'] = qty;
    data['total'] = total;
    data['currency'] = currency;
    data['subtotal'] = subtotal;
    data['isError'] = isError;
    data['errorMessage'] = errorMessage;
    if (details != null) {
      final v = details;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['details'] = arr0;
    }
    if (items != null) {
      final v = items;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['items'] = arr0;
    }
    return data;
  }
}
