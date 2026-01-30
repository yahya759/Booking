import 'package:flutter/material.dart';
import '../../booking_now/view/widgets/booking_header.dart';
import '../../booking_now/view/widgets/booking_info_card.dart';
import '../../booking_now/view/widgets/booking_amenities.dart';
import '../../booking_now/view/widgets/booking_surroundings.dart';
import '../../booking_now/view/widgets/booking_bottom_bar.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const BookingHeader(),
                // Using transform to overlap the card with the header
                Transform.translate(
                  offset: const Offset(0, -32),
                  child: Column(
                    children: [
                      const BookingInfoCard(),
                      const BookingAmenities(),
                      const SizedBox(height: 24),
                      const BookingSurroundings(),
                      // Extra space for the bottom bar
                      const SizedBox(height: 180),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            child: BookingBottomBar(),
          ),
        ],
      ),
    );
  }
}
