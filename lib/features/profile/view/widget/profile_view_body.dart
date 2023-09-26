import 'package:flutter/material.dart';
import 'custom_address_member.dart';
import 'custom_appbar_profile.dart';
import 'custom_booking.dart';
import 'custom_portfolio.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const Column(
      children: [
        CustomAppBarProfile(),
        CustomAddressMember(),
        CustomBooking(),
        CustomPortfolio()
      ],
    );
  }
}



