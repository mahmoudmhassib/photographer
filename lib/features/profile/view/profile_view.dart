import 'package:flutter/material.dart';
import 'package:photographer/features/profile/view/widget/profile_view_body.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: ProfileViewBody(),
    );
  }
}

