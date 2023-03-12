import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nutrinote/core/models/product_model.dart';

part 'nutrition_log_model.g.dart';

@CopyWith()
@JsonSerializable()
class NutritionLog extends Equatable {
  final String? id;
  final String? productId;
  final Product product;
  final DateTime? updatedAt;
  final DateTime? createdAt;

  const NutritionLog({this.updatedAt, this.createdAt, this.id, this.productId, required this.product});

  @override
  List<Object?> get props => [id, productId, product];

  factory NutritionLog.fromJson(Map<String, dynamic> json) => _$NutritionLogFromJson(json);
  Map<String, dynamic> toJson() => _$NutritionLogToJson(this);
}
