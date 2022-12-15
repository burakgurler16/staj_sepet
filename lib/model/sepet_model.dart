// To parse this JSON data, do
//
//     final sepet = sepetFromJson(jsonString);

import 'dart:convert';

Sepet sepetFromJson(String str) => Sepet.fromJson(json.decode(str));

String sepetToJson(Sepet data) => json.encode(data.toJson());

class Sepet {
  Sepet({
    required this.id,
    required this.qty2,
    required this.qty,
    required this.total,
    required this.currency,
    required this.subtotal,
    required this.isError,
    required this.errorMessage,
    required this.details,
    required this.items,
  });

  int id;
  int qty2;
  int qty;
  int total;
  String currency;
  int subtotal;
  bool isError;
  String errorMessage;
  List<Detail> details;
  List<Item> items;

  factory Sepet.fromJson(Map<String, dynamic> json) => Sepet(
        id: json["id"],
        qty2: json["qty2"],
        qty: json["qty"],
        total: json["total"],
        currency: json["currency"],
        subtotal: json["subtotal"],
        isError: json["isError"],
        errorMessage: json["errorMessage"],
        details:
            List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "qty2": qty2,
        "qty": qty,
        "total": total,
        "currency": currency,
        "subtotal": subtotal,
        "isError": isError,
        "errorMessage": errorMessage,
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Detail {
  Detail({
    required this.name,
    required this.value,
    required this.strikeThrough,
  });

  String name;
  String value;
  bool strikeThrough;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        name: json["name"],
        value: json["value"],
        strikeThrough: json["strike_through"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
        "strike_through": strikeThrough,
      };
}

class Item {
  Item({
    required this.id,
    required this.productId,
    required this.qty,
    required this.price,
    required this.total,
    required this.name,
    required this.variant,
    required this.image,
    required this.packageQty,
    required this.currency,
    required this.isError,
    required this.errorMessage,
  });

  int id;
  int productId;
  int qty;
  double price;
  int total;
  String name;
  String variant;
  String image;
  int packageQty;
  String currency;
  bool isError;
  String errorMessage;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        productId: json["product_id"],
        qty: json["qty"],
        price: json["price"].toDouble(),
        total: json["total"],
        name: json["name"],
        variant: json["variant"],
        image: json["image"],
        packageQty: json["package_qty"],
        currency: json["currency"],
        isError: json["isError"],
        errorMessage: json["errorMessage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "qty": qty,
        "price": price,
        "total": total,
        "name": name,
        "variant": variant,
        "image": image,
        "package_qty": packageQty,
        "currency": currency,
        "isError": isError,
        "errorMessage": errorMessage,
      };
}
