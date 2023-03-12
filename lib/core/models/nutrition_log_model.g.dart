// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_log_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NutritionLogCWProxy {
  NutritionLog updatedAt(DateTime? updatedAt);

  NutritionLog createdAt(DateTime? createdAt);

  NutritionLog id(String? id);

  NutritionLog productId(String? productId);

  NutritionLog product(Product product);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NutritionLog(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NutritionLog(...).copyWith(id: 12, name: "My name")
  /// ````
  NutritionLog call({
    DateTime? updatedAt,
    DateTime? createdAt,
    String? id,
    String? productId,
    Product? product,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNutritionLog.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNutritionLog.copyWith.fieldName(...)`
class _$NutritionLogCWProxyImpl implements _$NutritionLogCWProxy {
  const _$NutritionLogCWProxyImpl(this._value);

  final NutritionLog _value;

  @override
  NutritionLog updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  NutritionLog createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  NutritionLog id(String? id) => this(id: id);

  @override
  NutritionLog productId(String? productId) => this(productId: productId);

  @override
  NutritionLog product(Product product) => this(product: product);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NutritionLog(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NutritionLog(...).copyWith(id: 12, name: "My name")
  /// ````
  NutritionLog call({
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? productId = const $CopyWithPlaceholder(),
    Object? product = const $CopyWithPlaceholder(),
  }) {
    return NutritionLog(
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      productId: productId == const $CopyWithPlaceholder()
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String?,
      product: product == const $CopyWithPlaceholder() || product == null
          ? _value.product
          // ignore: cast_nullable_to_non_nullable
          : product as Product,
    );
  }
}

extension $NutritionLogCopyWith on NutritionLog {
  /// Returns a callable class that can be used as follows: `instanceOfNutritionLog.copyWith(...)` or like so:`instanceOfNutritionLog.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NutritionLogCWProxy get copyWith => _$NutritionLogCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutritionLog _$NutritionLogFromJson(Map<String, dynamic> json) => NutritionLog(
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NutritionLogToJson(NutritionLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'product': instance.product,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
