import 'package:flutter/material.dart';

import '../models/product.dart';

class ShopCategory {
  const ShopCategory({
    required this.name,
    required this.emoji,
    required this.color,
    required this.icon,
  });

  final String name;
  final String emoji;
  final Color color;
  final IconData icon;
}

class ProductData {
  ProductData._();

  static const String allProducts = 'All Products';

  static const List<ShopCategory> categories = <ShopCategory>[
    ShopCategory(
      name: 'Electronics',
      emoji: '📱',
      color: Color(0xFF3B82F6),
      icon: Icons.devices_other,
    ),
    ShopCategory(
      name: 'Fashion',
      emoji: '👗',
      color: Color(0xFFEC4899),
      icon: Icons.checkroom,
    ),
    ShopCategory(
      name: 'Shoes',
      emoji: '👟',
      color: Color(0xFF14B8A6),
      icon: Icons.directions_run,
    ),
    ShopCategory(
      name: 'Beauty',
      emoji: '💄',
      color: Color(0xFFF472B6),
      icon: Icons.spa,
    ),
    ShopCategory(
      name: 'Accessories',
      emoji: '🎒',
      color: Color(0xFFF59E0B),
      icon: Icons.watch,
    ),
    ShopCategory(
      name: 'Home',
      emoji: '🪴',
      color: Color(0xFF22C55E),
      icon: Icons.home,
    ),
  ];

  static const List<Product> products = <Product>[
    Product(
      name: 'iPhone 15 Pro',
      category: 'Electronics',
      image: 'assets/images/products/iphone_15_pro.png',
      price: 185000,
      oldPrice: 199000,
      rating: 4.8,
      isPopular: true,
      description:
          'Flagship smartphone with a titanium frame, A-series chip and a pro-grade camera system.',
    ),
    Product(
      name: 'Laptop Pro 14',
      category: 'Electronics',
      image: 'assets/images/products/laptop_pro_14.png',
      price: 320000,
      rating: 4.7,
      isPopular: true,
      description:
          'Powerful 14-inch laptop with a stunning display, all-day battery and silent cooling.',
    ),
    Product(
      name: 'Wireless Headphones',
      category: 'Electronics',
      image: 'assets/images/products/wireless_headphones.png',
      price: 3500,
      oldPrice: 4500,
      rating: 4.5,
      isPopular: true,
      description:
          'Wireless headphones with high-quality sound, deep bass and comfortable ear cushions.',
    ),
    Product(
      name: 'Smart Watch',
      category: 'Electronics',
      image: 'assets/images/products/smart_watch.png',
      price: 12500,
      rating: 4.4,
      description:
          'Track fitness, heart rate and notifications with a bright always-on AMOLED screen.',
    ),
    Product(
      name: 'Bluetooth Speaker',
      category: 'Electronics',
      image: 'assets/images/products/bluetooth_speaker.png',
      price: 6500,
      rating: 4.3,
      isNew: true,
      description:
          'Portable speaker with 360-degree sound, rugged design and 12 hours of playtime.',
    ),
    Product(
      name: 'Mechanical Keyboard',
      category: 'Electronics',
      image: 'assets/images/products/mechanical_keyboard.png',
      price: 14500,
      rating: 4.6,
      description:
          'Tactile mechanical keyboard with hot-swappable switches and customizable RGB lighting.',
    ),
    Product(
      name: 'Classic T-Shirt',
      category: 'Fashion',
      image: 'assets/images/products/classic_t_shirt.png',
      price: 2500,
      rating: 4.3,
      description:
          'Soft breathable cotton T-shirt with a regular fit that goes with everything.',
    ),
    Product(
      name: 'Denim Jacket',
      category: 'Fashion',
      image: 'assets/images/products/denim_jacket.png',
      price: 8900,
      oldPrice: 11000,
      rating: 4.6,
      description:
          'Timeless denim jacket with a washed finish, perfect for layering all year round.',
    ),
    Product(
      name: 'Summer Dress',
      category: 'Fashion',
      image: 'assets/images/products/summer_dress.png',
      price: 5400,
      rating: 4.5,
      isNew: true,
      description:
          'Lightweight floral dress with a flattering cut for warm sunny days.',
    ),
    Product(
      name: 'Cozy Hoodie',
      category: 'Fashion',
      image: 'assets/images/products/cozy_hoodie.png',
      price: 4800,
      rating: 4.4,
      description:
          'Warm fleece-lined hoodie with a drawstring hood and kangaroo pocket.',
    ),
    Product(
      name: 'Denim Jeans',
      category: 'Fashion',
      image: 'assets/images/products/denim_jeans.png',
      price: 6200,
      rating: 4.2,
      description:
          'Slim-fit stretch jeans made from durable denim for everyday comfort.',
    ),
    Product(
      name: 'Wool Scarf',
      category: 'Fashion',
      image: 'assets/images/products/wool_scarf.png',
      price: 1800,
      rating: 4.1,
      description:
          'Soft wool scarf that keeps you cozy while adding a refined touch to any outfit.',
    ),
    Product(
      name: 'Running Sneakers',
      category: 'Shoes',
      image: 'assets/images/products/running_sneakers.png',
      price: 9500,
      oldPrice: 12000,
      rating: 4.7,
      isPopular: true,
      description:
          'Lightweight running shoes with responsive cushioning and a breathable mesh upper.',
    ),
    Product(
      name: 'Leather Boots',
      category: 'Shoes',
      image: 'assets/images/products/leather_boots.png',
      price: 15500,
      rating: 4.5,
      description:
          'Handcrafted leather boots with a sturdy sole for style that lasts for years.',
    ),
    Product(
      name: 'Ballet Flats',
      category: 'Shoes',
      image: 'assets/images/products/ballet_flats.png',
      price: 4200,
      rating: 4.2,
      description:
          'Elegant pointed-toe flats with a cushioned insole for all-day comfort.',
    ),
    Product(
      name: 'Sports Sandals',
      category: 'Shoes',
      image: 'assets/images/products/sports_sandals.png',
      price: 2900,
      rating: 4.0,
      isNew: true,
      description:
          'Adjustable sports sandals with a grippy outsole for hikes and beach days.',
    ),
    Product(
      name: 'Classic Heels',
      category: 'Shoes',
      image: 'assets/images/products/classic_heels.png',
      price: 7800,
      rating: 4.4,
      description:
          'Sleek block heels that pair effortlessly with dresses and office wear.',
    ),
    Product(
      name: 'Formal Loafers',
      category: 'Shoes',
      image: 'assets/images/products/formal_loafers.png',
      price: 11200,
      rating: 4.3,
      description:
          'Polished leather loafers with a soft lining, ideal for work and events.',
    ),
    Product(
      name: 'Matte Lipstick',
      category: 'Beauty',
      image: 'assets/images/products/matte_lipstick.png',
      price: 1500,
      rating: 4.6,
      description:
          'Long-lasting matte lipstick with a creamy texture that never dries your lips.',
    ),
    Product(
      name: 'Skin Serum',
      category: 'Beauty',
      image: 'assets/images/products/skin_serum.png',
      price: 3200,
      oldPrice: 4000,
      rating: 4.7,
      description:
          'Hydrating vitamin-C serum that brightens skin and reduces the look of fine lines.',
    ),
    Product(
      name: 'Nail Polish Set',
      category: 'Beauty',
      image: 'assets/images/products/nail_polish_set.png',
      price: 1900,
      rating: 4.3,
      isNew: true,
      description:
          'Set of six chip-resistant nail polishes in trending seasonal shades.',
    ),
    Product(
      name: 'Makeup Kit',
      category: 'Beauty',
      image: 'assets/images/products/makeup_kit.png',
      price: 6500,
      rating: 4.8,
      isPopular: true,
      description:
          'Complete makeup kit with eyeshadows, blush and brushes in one portable case.',
    ),
    Product(
      name: 'Blush Palette',
      category: 'Beauty',
      image: 'assets/images/products/blush_palette.png',
      price: 2400,
      rating: 4.4,
      description:
          'Four-tone blush palette with buildable pigments for a natural glow.',
    ),
    Product(
      name: 'Brush Set',
      category: 'Beauty',
      image: 'assets/images/products/brush_set.png',
      price: 2100,
      rating: 4.2,
      description:
          'Set of ten ultra-soft makeup brushes for flawless blending and finishing.',
    ),
    Product(
      name: 'Travel Backpack',
      category: 'Accessories',
      image: 'assets/images/products/travel_backpack.png',
      price: 7500,
      oldPrice: 9000,
      rating: 4.6,
      isPopular: true,
      description:
          'Water-resistant backpack with a padded laptop sleeve and hidden anti-theft pocket.',
    ),
    Product(
      name: 'Sunglasses',
      category: 'Accessories',
      image: 'assets/images/products/sunglasses.png',
      price: 3800,
      rating: 4.4,
      description:
          'Polarized sunglasses with UV400 protection and a lightweight metal frame.',
    ),
    Product(
      name: 'Leather Wallet',
      category: 'Accessories',
      image: 'assets/images/products/leather_wallet.png',
      price: 2600,
      rating: 4.5,
      isNew: true,
      description:
          'Slim leather wallet with RFID blocking and space for eight cards.',
    ),
    Product(
      name: 'Gold Ring',
      category: 'Accessories',
      image: 'assets/images/products/gold_ring.png',
      price: 22000,
      rating: 4.9,
      description:
          'Elegant 18k gold-plated ring with a minimalist design for any occasion.',
    ),
    Product(
      name: 'Silk Tie',
      category: 'Accessories',
      image: 'assets/images/products/silk_tie.png',
      price: 1900,
      rating: 4.1,
      description:
          'Pure silk tie with a subtle pattern, cut for a sharp professional look.',
    ),
    Product(
      name: 'Beanie Hat',
      category: 'Accessories',
      image: 'assets/images/products/beanie_hat.png',
      price: 1400,
      rating: 4.2,
      description:
          'Knitted beanie that traps heat while staying soft and comfortable all day.',
    ),
    Product(
      name: 'Table Lamp',
      category: 'Home',
      image: 'assets/images/products/table_lamp.png',
      price: 4500,
      rating: 4.5,
      description:
          'Modern table lamp with warm dimmable light and a minimalist oak base.',
    ),
    Product(
      name: 'Coffee Mug',
      category: 'Home',
      image: 'assets/images/products/coffee_mug.png',
      price: 1200,
      oldPrice: 1600,
      rating: 4.6,
      description:
          'Stoneware mug that keeps coffee hot longer, microwave and dishwasher safe.',
    ),
    Product(
      name: 'Scented Candle',
      category: 'Home',
      image: 'assets/images/products/scented_candle.png',
      price: 1800,
      rating: 4.7,
      isNew: true,
      description:
          'Soy wax candle with a calming lavender scent and a 40-hour burn time.',
    ),
    Product(
      name: 'Plant Pot',
      category: 'Home',
      image: 'assets/images/products/plant_pot.png',
      price: 3400,
      rating: 4.3,
      description:
          'Ceramic plant pot with drainage hole and matching saucer for indoor plants.',
    ),
    Product(
      name: 'Cushion Cover',
      category: 'Home',
      image: 'assets/images/products/cushion_cover.png',
      price: 2200,
      rating: 4.1,
      description:
          'Textured cushion cover with a hidden zipper, set of two for your sofa.',
    ),
    Product(
      name: 'Wall Clock',
      category: 'Home',
      image: 'assets/images/products/wall_clock.png',
      price: 2900,
      rating: 4.4,
      description:
          'Silent sweep wall clock with a clean dial that fits any room decor.',
    ),
  ];

  static List<Product> byCategory(String category) {
    if (category == allProducts) return products;
    return products.where((p) => p.category == category).toList();
  }

  static List<Product> get popular =>
      products.where((p) => p.isPopular).toList();

  static List<Product> get newArrivals =>
      products.where((p) => p.isNew).toList();
}
