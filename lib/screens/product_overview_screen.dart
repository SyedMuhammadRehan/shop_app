import 'package:flutter/material.dart';
import 'package:shop_app/provider/product_model.dart';
import 'package:shop_app/widget/product_grid.dart';
import 'package:shop_app/widget/product_item.dart';

enum FilterOption {
  FavoriteOnly,
  All,
}

class ProductOverview extends StatefulWidget {
  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  var _showfavorites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Shop",
            textAlign: TextAlign.center,
          ),
          actions: [
            PopupMenuButton(
              onSelected: (FilterOption selectedValue) {
                setState(() {
                  if (selectedValue == FilterOption.FavoriteOnly) {
                    _showfavorites = true;
                  } else {
                    _showfavorites = false;
                  }
                });
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                PopupMenuItem(
                    child: Text("Only Favorites"),
                    value: FilterOption.FavoriteOnly),
                PopupMenuItem(child: Text("All"), value: FilterOption.All)
              ],
            )
          ]),
      body: ProductGrid(_showfavorites),
    );
  }
}
