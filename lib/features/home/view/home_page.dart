import 'package:flutter/material.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/search_section.dart';
import 'widgets/category_list.dart';
import 'widgets/deals_card.dart';
import 'widgets/explore_section.dart';
import 'widgets/genius_section.dart';
import 'widgets/need_ideas_section.dart';
import 'widgets/weekend_offers_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const CustomAppBar(),
                const SizedBox(height: 25),
                const SearchSection(),
                const SizedBox(height: 25),
                const CategoryList(),
                const SizedBox(height: 25),
                const DealsCard(),
                const SizedBox(height: 25),
                const ExploreSection(),
                const SizedBox(height: 25),
                const GeniusSection(),
                const SizedBox(height: 25),
                const NeedIdeasSection(),
                const SizedBox(height: 25),
                const WeekendOffersSection(),
                const SizedBox(
                  height:
                      120, // Space so content is not hidden behind the nav bar
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
