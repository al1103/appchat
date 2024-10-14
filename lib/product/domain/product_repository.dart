import 'package:messanger/product/domain/product_list.dart';

mixin ProductRepository {
  Future<ProductList> getProducts(int limit, int skip);
}
