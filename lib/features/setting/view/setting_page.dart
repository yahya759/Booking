import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_info.dart';
import 'widgets/genius_card.dart';
import 'widgets/credits_bar.dart';
import 'widgets/settings_section.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FE),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileHeader(),
              const SizedBox(height: 10),
              const ProfileInfo(),
              const SizedBox(height: 30),
              const GeniusCard(),
              const SizedBox(height: 20),
              const CreditsBar(),
              const SizedBox(height: 20),
              const SettingsSection(
                title: 'Payment information',
                children: [
                  SettingsTile(
                    icon: Icons.account_balance_wallet_outlined,
                    label: 'Rewards & Wallet',
                  ),
                  SettingsTile(
                    icon: Icons.payment_outlined,
                    label: 'Payment methods',
                  ),
                  SettingsTile(
                    icon: Icons.history_outlined,
                    label: 'Transactions',
                    showBorder: false,
                  ),
                ],
              ),
              const SettingsSection(
                title: 'Manage account',
                children: [
                  SettingsTile(
                    icon: Icons.person_outline,
                    label: 'Personal details',
                  ),
                  SettingsTile(
                    icon: Icons.security_outlined,
                    label: 'Security',
                  ),
                  SettingsTile(
                    icon: Icons.notifications_none_outlined,
                    label: 'Notifications',
                    showBorder: false,
                  ),
                ],
              ),
              const SizedBox(height: 120), // Bottom nav space
            ],
          ),
        ),
      ),
    );
  }
}
