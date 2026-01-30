import 'package:flutter/material.dart';

class GeniusSection extends StatelessWidget {
  const GeniusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Travel more spend less',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              _buildGeniusCard(
                context,
                title: 'Genius',
                subtitle:
                    'Genius Loyalty Program.\nYou\'ve unlocked Level 1 benefits',
                isBlue: true,
              ),
              const SizedBox(width: 15),
              _buildGeniusCard(
                context,
                title: 'Genius',
                subtitle:
                    'Enjoy discounts at thousands of properties worldwide.',
                isBlue: false,
                discount: '10% off',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGeniusCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required bool isBlue,
    String? discount,
  }) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isBlue ? const Color(0xFF4361EE) : Colors.grey[50],
        borderRadius: BorderRadius.circular(25),
        border: isBlue ? null : Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: isBlue ? Colors.white : Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (isBlue)
                const Icon(Icons.star_border, color: Colors.white)
              else
                const Icon(Icons.star_border, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyle(
              color: isBlue ? Colors.white70 : Colors.black54,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          if (discount != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFF4361EE).withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                discount,
                style: const TextStyle(
                  color: Color(0xFF4361EE),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          else
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.north_east,
                  color: Color(0xFF4361EE),
                  size: 20,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
