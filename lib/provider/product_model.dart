import 'package:flutter/material.dart';

// class ProductModel with ChangeNotifier {
//   final String id;
//   final String title;
//   final String description;
//   final double price;
//   final String imageUrl;
//   bool isFavorite;

//   ProductModel({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.price,
//     required this.imageUrl,
//     this.isFavorite = false,
//   });

//   void togglefavorite() {
//     if (isFavorite == false) {
//       isFavorite = true;
//     } else {
//       isFavorite = false;
//     }

//     notifyListeners();
//   }
// }

import 'package:flutter/foundation.dart';

class ProductModel with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void togglefavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
