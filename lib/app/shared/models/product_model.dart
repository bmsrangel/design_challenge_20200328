// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromMap(x)));

String productModelToJson(List<ProductModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ProductModel {
  final int id;
  final String title;
  final String picture;
  final double price;
  final bool isFavorite;
  final int discount;

  ProductModel({
    this.id,
    this.title,
    this.picture,
    this.price,
    this.isFavorite,
    this.discount,
  });

  ProductModel copyWith({
    int id,
    String title,
    String picture,
    double price,
    bool isFavorite,
    int discount,
  }) =>
      ProductModel(
        id: id ?? this.id,
        title: title ?? this.title,
        picture: picture ?? this.picture,
        price: price ?? this.price,
        isFavorite: isFavorite ?? this.isFavorite,
        discount: discount ?? this.discount,
      );

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        picture: json["picture"] == null ? null : json["picture"],
        price: json["price"] == null ? null : json["price"].toDouble(),
        isFavorite: json["isFavorite"] == null ? null : json["isFavorite"],
        discount: json["discount"] == null ? null : json["discount"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "picture": picture == null ? null : picture,
        "price": price == null ? null : price,
        "isFavorite": isFavorite == null ? null : isFavorite,
        "discount": discount == null ? null : discount,
      };
}
