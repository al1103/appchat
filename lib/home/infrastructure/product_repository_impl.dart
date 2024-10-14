import 'package:messanger/core/infrastructure/datasource/remote/api_service.dart';
import 'package:messanger/product/domain/product_list.dart';
import 'package:messanger/product/domain/product_repository.dart';
import 'package:messanger/product/infrastructure/product_list_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository_impl.g.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<ProductList> getProducts(int limit, int skip) async {
    return apiService.requestGet(
      '/product',
      {'limit': limit, 'skip': skip},
      responseFactory: (json) => ProductListDTO.fromJson(json).toDomain(),
    );
  }
}

@Riverpod(keepAlive: true)
ProductRepository productRepository(ProductRepositoryRef ref) =>
    ProductRepositoryImpl(ref.read(apiServiceProvider));
