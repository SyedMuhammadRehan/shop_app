import 'package:flutter/material.dart';
import 'package:shop_app/provider/products.dart';
import 'package:provider/provider.dart';

class ProductDescription extends StatelessWidget {
  static const String route = '/productdesc';

  @override
  Widget build(BuildContext context) {
    final prodid = ModalRoute.of(context)!.settings.arguments as String;
    final loadProduct =
        Provider.of<Products>(context, listen: false).findById(prodid);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadProduct.title),
      ),
    );
  }
}
