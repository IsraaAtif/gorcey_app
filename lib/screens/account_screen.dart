

import 'package:flutter/material.dart';
import 'package:gorcey_app/widgets/account_info.dart';
import 'package:gorcey_app/widgets/account_option.dart';
import 'package:gorcey_app/widgets/primary_button.dart';
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          children: [
            const AccountInfo(),
            const SizedBox(height: 41),
            const Divider(color: Color(0xffE2E2E2), height: 1),

            const AccountOption(
              icon: Icons.breakfast_dining_outlined,
              text: 'Orders',
            ),
            const AccountOption(
              icon: Icons.badge_outlined,
              text: 'My Details',
            ),
            const AccountOption(
              icon: Icons.location_on_outlined,
              text: 'Delivery Address',
            ),
            const AccountOption(
              icon: Icons.credit_card_outlined,
              text: 'Payment Methods',
            ),
            const AccountOption(
              icon: Icons.confirmation_number_outlined,
              text: 'Promo Card',
            ),
            const AccountOption(
              icon: Icons.notifications_none_outlined,
              text: 'Notifications',
            ),
            const AccountOption(
              icon: Icons.help_outline,
              text: 'Help',
            ),
            const AccountOption(
              icon: Icons.info_outline,
              text: 'About',
            ),

            const SizedBox(height: 52),
            PrimaryButton(
              onTap: () {},
              text: 'Log Out',
              icon: Icons.logout,
            ),
            
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}