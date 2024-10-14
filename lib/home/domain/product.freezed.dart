// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Product {
  UniqueId get id => throw _privateConstructorUsedError;
  SingleLineText get title => throw _privateConstructorUsedError;
  SingleLineText get description => throw _privateConstructorUsedError;
  UnsignedIntValue get price => throw _privateConstructorUsedError;
  PercentageValue get discount => throw _privateConstructorUsedError;
  RatingValue get rating => throw _privateConstructorUsedError;
  UnsignedIntValue get stock => throw _privateConstructorUsedError;
  UrlString get thumbnail => throw _privateConstructorUsedError;
  List<UrlString> get images => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {UniqueId id,
      SingleLineText title,
      SingleLineText description,
      UnsignedIntValue price,
      PercentageValue discount,
      RatingValue rating,
      UnsignedIntValue stock,
      UrlString thumbnail,
      List<UrlString> images});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? discount = null,
    Object? rating = null,
    Object? stock = null,
    Object? thumbnail = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SingleLineText,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SingleLineText,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as UnsignedIntValue,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as PercentageValue,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingValue,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as UnsignedIntValue,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as UrlString,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UrlString>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      SingleLineText title,
      SingleLineText description,
      UnsignedIntValue price,
      PercentageValue discount,
      RatingValue rating,
      UnsignedIntValue stock,
      UrlString thumbnail,
      List<UrlString> images});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? discount = null,
    Object? rating = null,
    Object? stock = null,
    Object? thumbnail = null,
    Object? images = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SingleLineText,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as SingleLineText,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as UnsignedIntValue,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as PercentageValue,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingValue,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as UnsignedIntValue,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as UrlString,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UrlString>,
    ));
  }
}

/// @nodoc

class _$ProductImpl implements _Product {
  _$ProductImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discount,
      required this.rating,
      required this.stock,
      required this.thumbnail,
      required final List<UrlString> images})
      : _images = images;

  @override
  final UniqueId id;
  @override
  final SingleLineText title;
  @override
  final SingleLineText description;
  @override
  final UnsignedIntValue price;
  @override
  final PercentageValue discount;
  @override
  final RatingValue rating;
  @override
  final UnsignedIntValue stock;
  @override
  final UrlString thumbnail;
  final List<UrlString> _images;
  @override
  List<UrlString> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, price: $price, discount: $discount, rating: $rating, stock: $stock, thumbnail: $thumbnail, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      discount,
      rating,
      stock,
      thumbnail,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product implements Product {
  factory _Product(
      {required final UniqueId id,
      required final SingleLineText title,
      required final SingleLineText description,
      required final UnsignedIntValue price,
      required final PercentageValue discount,
      required final RatingValue rating,
      required final UnsignedIntValue stock,
      required final UrlString thumbnail,
      required final List<UrlString> images}) = _$ProductImpl;

  @override
  UniqueId get id;
  @override
  SingleLineText get title;
  @override
  SingleLineText get description;
  @override
  UnsignedIntValue get price;
  @override
  PercentageValue get discount;
  @override
  RatingValue get rating;
  @override
  UnsignedIntValue get stock;
  @override
  UrlString get thumbnail;
  @override
  List<UrlString> get images;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
