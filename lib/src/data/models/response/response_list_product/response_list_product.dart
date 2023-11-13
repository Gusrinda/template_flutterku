import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_list_product.freezed.dart';
part 'response_list_product.g.dart';

@freezed
class ResponseListProduct with _$ResponseListProduct {
    const factory ResponseListProduct({
        @JsonKey(name: "products")
        List<Product>? products,
        @JsonKey(name: "total")
        int? total,
        @JsonKey(name: "skip")
        int? skip,
        @JsonKey(name: "limit")
        int? limit,
    }) = _ResponseListProduct;

    factory ResponseListProduct.fromJson(Map<String, dynamic> json) => _$ResponseListProductFromJson(json);
}

@freezed
class Product with _$Product {
    const factory Product({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "price")
        int? price,
        @JsonKey(name: "discountPercentage")
        double? discountPercentage,
        @JsonKey(name: "rating")
        double? rating,
        @JsonKey(name: "stock")
        int? stock,
        @JsonKey(name: "brand")
        String? brand,
        @JsonKey(name: "category")
        String? category,
        @JsonKey(name: "thumbnail")
        String? thumbnail,
        @JsonKey(name: "images")
        List<String>? images,
    }) = _Product;

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
