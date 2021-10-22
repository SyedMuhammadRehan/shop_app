import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/products.dart';
import 'package:shop_app/widget/product_item.dart';

class ProductGrid extends StatelessWidget {
  final bool _showfavorites;

  ProductGrid(this._showfavorites);
  @override
  Widget build(BuildContext context) {
    final productitem = Provider.of<Products>(context);
    final product = _showfavorites ? productitem.favorites : productitem.items;

    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: product[i],
        child: ProductItems(
            // product[i].id,
            // product[i].title,
            // product[i].imageUrl,
            ),
      ),
      itemCount: product.length,
    );
  }
}
