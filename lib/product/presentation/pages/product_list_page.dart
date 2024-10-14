import 'package:auto_route/auto_route.dart';
import 'package:messanger/product/application/product_controller.dart';
import 'package:messanger/product/domain/product.dart';
import 'package:messanger/product/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

@RoutePage()
class ProductListPage extends ConsumerStatefulWidget {
  const ProductListPage({super.key});

  @override
  ConsumerState<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends ConsumerState<ProductListPage> {
  final PagingController<int, Product> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  // void initState() {
  //   _pagingController.addPageRequestListener((pageKey) {
  //     ref.read(productControllerProvider.notifier).fetchProductList(pageKey);
  //   });

  //   super.initState();
  // }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(productControllerProvider, (_, state) {
      switch (state) {
        case AsyncData(:final value):
          final isLastPage = value.total.value <= value.skip.value;
          if (isLastPage) {
            _pagingController.appendLastPage(value.products);
          } else {
            _pagingController.appendPage(
              value.products,
              value.skip.value + value.limit.value,
            );
          }
        case AsyncError(:final error):
          _pagingController.error = error;
        default:
          break;
      }
    });
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: buildBody(context, ref),
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
    );
  }

  Widget buildBody(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: PagedGridView(
        builderDelegate: PagedChildBuilderDelegate<Product>(
          itemBuilder: (context, item, index) => ProductItem(product: item),
          firstPageErrorIndicatorBuilder: (context) => Center(
            child: Text(_pagingController.error.toString()),
          ),
        ),
        pagingController: _pagingController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        showNewPageProgressIndicatorAsGridChild: false,
      ),
    );
  }
}
