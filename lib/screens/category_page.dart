import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../theme/app_theme.dart';
import '../widgets/product_card.dart';

/// Displays all products of the selected category (or every product when
/// [categoryName] is "All Products") inside a responsive GridView.
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    final products = ProductData.byCategory(categoryName);

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: products.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.inventory_2_outlined,
                      size: 56, color: AppColors.textMuted),
                  SizedBox(height: 12),
                  Text(
                    'No products in this category yet.',
                    style: TextStyle(color: AppColors.textMuted),
                  ),
                ],
              ),
            )
          : LayoutBuilder(
              builder: (context, constraints) {
                final crossAxisCount = constraints.maxWidth >= 600 ? 3 : 2;
                return GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.54,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) =>
                      ProductCard(product: products[index]),
                );
              },
            ),
    );
  }
}
