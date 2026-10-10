import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../screens/category_page.dart';

class PromoBanner {
  const PromoBanner({
    required this.image,
    required this.title,
    required this.targetCategory,
  });

  final String image;
  final String title;
  final String targetCategory;
}

/// Promotional banner carousel built with the pub.dev `carousel_slider`
/// package. Tapping a banner opens the related category page.
class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  static const List<PromoBanner> _banners = <PromoBanner>[
    PromoBanner(
      image: 'assets/images/banners/banner_summer_sale.png',
      title: 'Summer Sale',
      targetCategory: 'Fashion',
    ),
    PromoBanner(
      image: 'assets/images/banners/banner_new_arrivals.png',
      title: 'New Arrivals',
      targetCategory: ProductData.allProducts,
    ),
    PromoBanner(
      image: 'assets/images/banners/banner_electronics.png',
      title: 'Electronics Discount',
      targetCategory: 'Electronics',
    ),
  ];

  int _current = 0;

  void _openBanner(PromoBanner banner) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CategoryPage(categoryName: banner.targetCategory),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _banners.map((banner) {
            return GestureDetector(
              onTap: () => _openBanner(banner),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    banner.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 150,
            viewportFraction: 0.92,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 600),
            onPageChanged: (index, _) => setState(() => _current = index),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_banners.length, (index) {
            final selected = index == _current;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: selected ? 20 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: selected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4),
              ),
            );
          }),
        ),
      ],
    );
  }
}
