import 'package:e_commers/main.dart';
import 'package:e_commers/screens/category_page.dart';
import 'package:e_commers/screens/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('home page shows the main sections', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.text('MyShop'), findsOneWidget);
    expect(find.text('Categories'), findsOneWidget);
    expect(find.text('Popular Products'), findsOneWidget);
    expect(find.text('View Details'), findsWidgets);

    await tester.drag(find.byType(ListView).first, const Offset(0, -500));
    await tester.pumpAndSettle();
    expect(find.text('New Arrivals'), findsOneWidget);
  });

  testWidgets('tapping a category opens the category page', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump(const Duration(milliseconds: 400));

    await tester.tap(find.text('Electronics').first);
    await tester.pumpAndSettle();

    expect(find.byType(CategoryPage), findsOneWidget);
    expect(find.text('iPhone 15 Pro'), findsOneWidget);
  });

  testWidgets('View Details opens the product details page', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump(const Duration(milliseconds: 400));

    final viewDetails = find.text('View Details').first;
    await tester.ensureVisible(viewDetails);
    await tester.pumpAndSettle();
    await tester.tap(viewDetails);
    await tester.pumpAndSettle();

    expect(find.byType(ProductDetailsPage), findsOneWidget);
    expect(find.text('Add to Cart'), findsOneWidget);
    expect(find.text('Description'), findsOneWidget);
  });

  testWidgets('Add to Cart shows a SnackBar and updates the badge',
      (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump(const Duration(milliseconds: 400));

    final viewDetails = find.text('View Details').first;
    await tester.ensureVisible(viewDetails);
    await tester.pumpAndSettle();
    await tester.tap(viewDetails);
    await tester.pumpAndSettle();

    await tester.tap(find.text('Add to Cart'));
    await tester.pump();

    expect(find.textContaining('added to cart'), findsOneWidget);
  });
}
