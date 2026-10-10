import 'package:flutter/material.dart';

import '../models/product.dart';
import '../screens/product_details_page.dart';
import '../theme/app_theme.dart';

/// Reusable product card built with Card + Container + Stack.
/// Shows the product image, favourite toggle, sale / new badge,
/// rating, price and a "View Details" button.
class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product, this.onViewDetails});

  final Product product;
  final VoidCallback? onViewDetails;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isFavorite = false;

  void _openDetails() {
    if (widget.onViewDetails != null) {
      widget.onViewDetails!();
      return;
    }
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ProductDetailsPage(product: widget.product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Hero(
                  tag: 'product-image-${product.name}',
                  child: Image.asset(product.image, fit: BoxFit.cover),
                ),
                if (product.discountPercent != null)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: _Badge(
                      label: '-${product.discountPercent}%',
                      color: AppColors.discount,
                    ),
                  )
                else if (product.isNew)
                  const Positioned(
                    top: 8,
                    left: 8,
                    child: _Badge(label: 'NEW', color: AppColors.newBadge),
                  ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: IconButton(
                    onPressed: () =>
                        setState(() => _isFavorite = !_isFavorite),
                    splashRadius: 20,
                    icon: Icon(
                      _isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border_rounded,
                      size: 22,
                      color: _isFavorite ? AppColors.discount : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  child: Text(
                    product.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textDark,
                      height: 1.25,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Icon(Icons.star_rounded,
                        size: 16, color: AppColors.rating),
                    const SizedBox(width: 2),
                    Text(
                      product.rating.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textDark,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        product.category,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 11,
                          color: AppColors.textMuted,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        product.priceLabel,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textDark,
                        ),
                      ),
                      if (product.oldPriceLabel != null) ...[
                        const SizedBox(width: 6),
                        Text(
                          product.oldPriceLabel!,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textMuted,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 36,
                  child: ElevatedButton(
                    onPressed: _openDetails,
                    child: const Text(
                      'View Details',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
