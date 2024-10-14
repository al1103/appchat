import 'package:messanger/product/domain/product_list.dart';
import 'package:messanger/product/infrastructure/product_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_controller.g.dart';

@riverpod
class ProductController extends _$ProductController {
  @override
  Future<ProductList> build() async {
    return ref.read(productRepositoryProvider).getProducts(20, 0);
  }

  Future<void> fetchProductList(int skip) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref.read(productRepositoryProvider).getProducts(20, skip),
    );
  }
}
