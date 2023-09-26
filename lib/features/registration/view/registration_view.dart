import 'package:flutter/material.dart';
import 'package:photographer/features/registration/view/widget/registration_view_body.dart';

import '../../../core/utils/constants.dart';

class RegistrationView extends StatelessWidget {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photographer Registration'),
        centerTitle: true,
        backgroundColor: kColorAppBar,
      ),
      body: const RegistrationViewBody(),
    );
  }
}
