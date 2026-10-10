import 'package:flutter/foundation.dart';

import '../models/product.dart';

/// Minimal in-memory cart used for the cart badge and SnackBar feedback.
/// Real checkout/database is out of scope for this assignment.
class CartController {
  CartController._();

  static final List<Product> items = <Product>[];
  static final ValueNotifier<int> count = ValueNotifier<int>(0);

  static void add(Product product) {
    items.add(product);
    count.value = items.length;
  }

  static double get total => items.fold(0, (sum, p) => sum + p.price);
}
