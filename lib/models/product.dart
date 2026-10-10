String formatPrice(num value) {
  final digits = value.toStringAsFixed(0);
  final buffer = StringBuffer();
  for (var i = 0; i < digits.length; i++) {
    if (i > 0 && (digits.length - i) % 3 == 0) {
      buffer.write(',');
    }
    buffer.write(digits[i]);
  }
  return 'Rs. $buffer';
}

class Product {
  const Product({
    required this.name,
    required this.category,
    required this.image,
    required this.price,
    required this.rating,
    required this.description,
    this.oldPrice,
    this.isNew = false,
    this.isPopular = false,
  });

  final String name;
  final String category;
  final String image;
  final double price;
  final double rating;
  final String description;
  final double? oldPrice;
  final bool isNew;
  final bool isPopular;

  int? get discountPercent {
    final old = oldPrice;
    if (old == null || old <= price) return null;
    return (((old - price) / old) * 100).round();
  }

  String get priceLabel => formatPrice(price);

  String? get oldPriceLabel => oldPrice == null ? null : formatPrice(oldPrice!);
}
