import 'package:flutter/material.dart';
import 'package:photographer/core/utils/colors.dart';
import 'package:photographer/core/utils/icons.dart';

import '../../../../core/utils/constants.dart';
import '../../../client/client_view.dart';
import '../../../registration/view/registration_view.dart';
import 'custom_bottom_sheet.dart';

class CustomLoginRow extends StatefulWidget {
  const CustomLoginRow({Key? key}) : super(key: key);

  @override
  State<CustomLoginRow> createState() => _CustomLoginRowState();
}

class _CustomLoginRowState extends State<CustomLoginRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have account?',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: ColorsData.b, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                useRootNavigator: true,
                builder: (context) {
                  return CustomBottomSheet(
                    textListTileTop: 'Client',
                    textListTileBottom: 'Photographer',
                    onTapTop: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ClientView()));
                      });
                    },
                    onTapBottom: () {
                      setState(
                        () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const RegistrationView()));
                        },
                      );
                    },
                    textColorSheet: kColorAppBar,
                    iconDataTop: IconsData.camera,
                    iconDataBottom: IconsData.gallery,
                  );
                });
          },
          child: const Text(
            '  Create Account',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: kColorAppBar, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
