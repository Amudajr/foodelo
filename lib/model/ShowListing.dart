import 'dart:convert';

ShowList showListFromJson(String str) => ShowList.fromJson(json.decode(str));

String showListToJson(ShowList data) => json.encode(data.toJson());

class ShowList {
  ShowList({
    required this.products,
  });

  Products products;

  factory ShowList.fromJson(Map<String, dynamic> json) => ShowList(
        products: Products.fromJson(json["products"]),
      );

  Map<String, dynamic> toJson() => {
        "products": products.toJson(),
      };
}

class Products {
  Products({
    required this.message,
    required this.success,
    required this.statusCode,
    required this.data,
  });

  String message;
  bool success;
  int statusCode;
  List<Datum> data;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        message: json["message"],
        success: json["success"],
        statusCode: json["statusCode"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "success": success,
        "statusCode": statusCode,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.price,
    required this.initialQuantity,
    required this.soldQuantity,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String name;
  int price;
  int initialQuantity;
  int soldQuantity;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        price: json["price"],
        initialQuantity: json["initialQuantity"],
        soldQuantity: json["soldQuantity"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "price": price,
        "initialQuantity": initialQuantity,
        "soldQuantity": soldQuantity,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
