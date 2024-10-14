import 'package:messanger/core/domain/entity.dart';
import 'package:messanger/core/domain/unique_id.dart';
import 'package:messanger/core/domain/value_objects.dart';
import 'package:messanger/product/domain/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product implements Entity {
  factory Product({
    required UniqueId id,
    required SingleLineText title,
    required SingleLineText description,
    required UnsignedIntValue price,
    required PercentageValue discount,
    required RatingValue rating,
    required UnsignedIntValue stock,
    required UrlString thumbnail,
    required List<UrlString> images,
  }) = _Product;
}
