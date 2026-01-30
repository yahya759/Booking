import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'name': 'Stays', 'icon': Icons.bed_outlined, 'selected': true},
      {
        'name': 'Cars',
        'icon': Icons.directions_car_outlined,
        'selected': false,
      },
      {'name': 'Flights', 'icon': Icons.flight_outlined, 'selected': false},
      {
        'name': 'Cruises',
        'icon': Icons.directions_boat_outlined,
        'selected': false,
      },
      {'name': 'Tours', 'icon': Icons.map_outlined, 'selected': false},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((cat) {
          final isSelected = cat['selected'] as bool;
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xFF4361EE)
                        : Colors.grey[100],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    cat['icon'] as IconData,
                    color: isSelected ? Colors.white : Colors.grey,
                  ),
                ),
                if (isSelected) ...[
                  const SizedBox(height: 8),
                  Text(
                    cat['name'] as String,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
