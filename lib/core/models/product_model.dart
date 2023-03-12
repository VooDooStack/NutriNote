import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nutrinote/core/models/nutrition_model.dart';

part 'product_model.g.dart';

@CopyWith()
@JsonSerializable()
class Product extends Equatable {
  final String id;
  final String? name;
  final String? description;
  final double? price;
  final String? imageUrl;
  final String? imageThumbnailUrl;
  final String barcode;
  final Nutrition nutrients;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.imageThumbnailUrl,
    required this.barcode,
    required this.nutrients,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        price,
        imageUrl,
        imageThumbnailUrl,
        barcode,
        nutrients,
      ];

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
