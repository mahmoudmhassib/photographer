import 'package:flutter/material.dart';
import 'package:photographer/features/client/view/client_view_body.dart';

import '../../core/utils/constants.dart';
class ClientView extends StatelessWidget {
  const ClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Client Registration'),
        backgroundColor: kColorAppBar,
      ),
      body: const ClientViewBody(),
    );
  }
}
