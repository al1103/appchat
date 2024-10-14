// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListDTOImpl _$$ProductListDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProductListDTOImpl(
      (json['products'] as List<dynamic>)
          .map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['total'] as num).toInt(),
      (json['limit'] as num).toInt(),
      (json['skip'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductListDTOImplToJson(
        _$ProductListDTOImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'limit': instance.limit,
      'skip': instance.skip,
    };
