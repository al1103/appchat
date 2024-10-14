import 'package:messanger/core/domain/value_objects.dart';
import 'package:messanger/product/domain/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list.freezed.dart';

@freezed
class ProductList with _$ProductList {
  factory ProductList({
    required List<Product> products,
    required UnsignedIntValue total,
    required UnsignedIntValue limit,
    required UnsignedIntValue skip,
  }) = _ProductList;
}
