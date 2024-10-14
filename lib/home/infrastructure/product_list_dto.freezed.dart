// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductListDTO _$ProductListDTOFromJson(Map<String, dynamic> json) {
  return _ProductListDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductListDTO {
  List<ProductDTO> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;

  /// Serializes this ProductListDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListDTOCopyWith<ProductListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListDTOCopyWith<$Res> {
  factory $ProductListDTOCopyWith(
          ProductListDTO value, $Res Function(ProductListDTO) then) =
      _$ProductListDTOCopyWithImpl<$Res, ProductListDTO>;
  @useResult
  $Res call({List<ProductDTO> products, int total, int limit, int skip});
}

/// @nodoc
class _$ProductListDTOCopyWithImpl<$Res, $Val extends ProductListDTO>
    implements $ProductListDTOCopyWith<$Res> {
  _$ProductListDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? limit = null,
    Object? skip = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListDTOImplCopyWith<$Res>
    implements $ProductListDTOCopyWith<$Res> {
  factory _$$ProductListDTOImplCopyWith(_$ProductListDTOImpl value,
          $Res Function(_$ProductListDTOImpl) then) =
      __$$ProductListDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductDTO> products, int total, int limit, int skip});
}

/// @nodoc
class __$$ProductListDTOImplCopyWithImpl<$Res>
    extends _$ProductListDTOCopyWithImpl<$Res, _$ProductListDTOImpl>
    implements _$$ProductListDTOImplCopyWith<$Res> {
  __$$ProductListDTOImplCopyWithImpl(
      _$ProductListDTOImpl _value, $Res Function(_$ProductListDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? limit = null,
    Object? skip = null,
  }) {
    return _then(_$ProductListDTOImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListDTOImpl extends _ProductListDTO {
  _$ProductListDTOImpl(
      final List<ProductDTO> products, this.total, this.limit, this.skip)
      : _products = products,
        super._();

  factory _$ProductListDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListDTOImplFromJson(json);

  final List<ProductDTO> _products;
  @override
  List<ProductDTO> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int total;
  @override
  final int limit;
  @override
  final int skip;

  @override
  String toString() {
    return 'ProductListDTO(products: $products, total: $total, limit: $limit, skip: $skip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListDTOImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.skip, skip) || other.skip == skip));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), total, limit, skip);

  /// Create a copy of ProductListDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListDTOImplCopyWith<_$ProductListDTOImpl> get copyWith =>
      __$$ProductListDTOImplCopyWithImpl<_$ProductListDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductListDTO extends ProductListDTO {
  factory _ProductListDTO(final List<ProductDTO> products, final int total,
      final int limit, final int skip) = _$ProductListDTOImpl;
  _ProductListDTO._() : super._();

  factory _ProductListDTO.fromJson(Map<String, dynamic> json) =
      _$ProductListDTOImpl.fromJson;

  @override
  List<ProductDTO> get products;
  @override
  int get total;
  @override
  int get limit;
  @override
  int get skip;

  /// Create a copy of ProductListDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListDTOImplCopyWith<_$ProductListDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
