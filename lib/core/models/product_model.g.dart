// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCWProxy {
  Product id(String id);

  Product name(String? name);

  Product description(String? description);

  Product price(double? price);

  Product imageUrl(String? imageUrl);

  Product imageThumbnailUrl(String? imageThumbnailUrl);

  Product barcode(String barcode);

  Product nutrients(Nutrition nutrients);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Product(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Product(...).copyWith(id: 12, name: "My name")
  /// ````
  Product call({
    String? id,
    String? name,
    String? description,
    double? price,
    String? imageUrl,
    String? imageThumbnailUrl,
    String? barcode,
    Nutrition? nutrients,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProduct.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProduct.copyWith.fieldName(...)`
class _$ProductCWProxyImpl implements _$ProductCWProxy {
  const _$ProductCWProxyImpl(this._value);

  final Product _value;

  @override
  Product id(String id) => this(id: id);

  @override
  Product name(String? name) => this(name: name);

  @override
  Product description(String? description) => this(description: description);

  @override
  Product price(double? price) => this(price: price);

  @override
  Product imageUrl(String? imageUrl) => this(imageUrl: imageUrl);

  @override
  Product imageThumbnailUrl(String? imageThumbnailUrl) =>
      this(imageThumbnailUrl: imageThumbnailUrl);

  @override
  Product barcode(String barcode) => this(barcode: barcode);

  @override
  Product nutrients(Nutrition nutrients) => this(nutrients: nutrients);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Product(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Product(...).copyWith(id: 12, name: "My name")
  /// ````
  Product call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? imageThumbnailUrl = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? nutrients = const $CopyWithPlaceholder(),
  }) {
    return Product(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double?,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
      imageThumbnailUrl: imageThumbnailUrl == const $CopyWithPlaceholder()
          ? _value.imageThumbnailUrl
          // ignore: cast_nullable_to_non_nullable
          : imageThumbnailUrl as String?,
      barcode: barcode == const $CopyWithPlaceholder() || barcode == null
          ? _value.barcode
          // ignore: cast_nullable_to_non_nullable
          : barcode as String,
      nutrients: nutrients == const $CopyWithPlaceholder() || nutrients == null
          ? _value.nutrients
          // ignore: cast_nullable_to_non_nullable
          : nutrients as Nutrition,
    );
  }
}

extension $ProductCopyWith on Product {
  /// Returns a callable class that can be used as follows: `instanceOfProduct.copyWith(...)` or like so:`instanceOfProduct.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductCWProxy get copyWith => _$ProductCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      imageThumbnailUrl: json['imageThumbnailUrl'] as String?,
      barcode: json['barcode'] as String,
      nutrients: Nutrition.fromJson(json['nutrients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'imageThumbnailUrl': instance.imageThumbnailUrl,
      'barcode': instance.barcode,
      'nutrients': instance.nutrients,
    };
