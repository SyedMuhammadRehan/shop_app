import 'package:flutter/material.dart';
import 'package:shop_app/provider/products.dart';
import 'package:shop_app/screens/product_description.dart';
import 'package:shop_app/screens/product_overview_screen.dart';
import 'package:shop_app/widget/product_item.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Products(),
      child: MaterialApp(
        title: 'Shopping App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange[600],
        ),
        home: ProductOverview(),
        routes: {
          ProductDescription.route: (ctx) => ProductDescription(),
        },
      ),
    );
  }
}
