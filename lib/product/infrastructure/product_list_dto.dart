import 'package:messanger/core/domain/value_objects.dart';
import 'package:messanger/product/domain/product_list.dart';
import 'package:messanger/product/infrastructure/product_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_dto.freezed.dart';
part 'product_list_dto.g.dart';

@freezed
class ProductListDTO with _$ProductListDTO {
  factory ProductListDTO(
    List<ProductDTO> products,
    int total,
    int limit,
    int skip,
  ) = _ProductListDTO;

  const ProductListDTO._();

  factory ProductListDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductListDTOFromJson(json);

  ProductList toDomain() => ProductList(
        products: products.map((e) => e.toDomain()).toList(),
        total: UnsignedIntValue(total),
        limit: UnsignedIntValue(limit),
        skip: UnsignedIntValue(skip),
      );
}
