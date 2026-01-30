import 'package:flutter/material.dart';
import 'widgets/save_header.dart';
import 'widgets/saved_item_card.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FE),
      body: SafeArea(
        child: Column(
          children: [
            const SaveHeader(),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: const [
                  SavedItemCard(
                    title: 'Luxury Ocean Suite',
                    location: 'Bali, Indonesia',
                    imageUrl:
                        'https://images.unsplash.com/photo-1571896349842-33c89424de2d?q=80&w=800&auto=format&fit=crop',
                    price: '\$450',
                    rating: 4.9,
                  ),
                  SavedItemCard(
                    title: 'Modern Mountain Loft',
                    location: 'St. Moritz, Switzerland',
                    imageUrl:
                        'https://images.unsplash.com/photo-1518780664697-55e3ad937233?q=80&w=800&auto=format&fit=crop',
                    price: '\$320',
                    rating: 4.8,
                  ),
                  SavedItemCard(
                    title: 'Private Beach Villa',
                    location: 'Maldives',
                    imageUrl:
                        'https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?q=80&w=800&auto=format&fit=crop',
                    price: '\$890',
                    rating: 5.0,
                  ),
                  SizedBox(height: 100), // Space for bottom nav
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
