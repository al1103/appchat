import 'package:messanger/core/domain/unique_id.dart';
import 'package:messanger/core/domain/value_objects.dart';
import 'package:messanger/product/domain/product.dart';
import 'package:messanger/product/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDTO with _$ProductDTO {
  factory ProductDTO(
    int id,
    String title,
    String description,
    int price,
    double discountPercentage,
    double rating,
    int stock,
    String brand,
    String category,
    String thumbnail,
    List<String> images,
  ) = _ProductDTO;

  const ProductDTO._();

  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);

  Product toDomain() {
    return Product(
      id: UniqueId.fromUniqueString(id.toString()),
      title: SingleLineText(title),
      description: SingleLineText(description),
      price: UnsignedIntValue(price),
      discount: PercentageValue(discountPercentage),
      rating: RatingValue(rating),
      stock: UnsignedIntValue(stock),
      thumbnail: UrlString(thumbnail),
      images: images.map(UrlString.new).toList(),
    );
  }
}
