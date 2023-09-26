import 'package:flutter/material.dart';

class RadioButtonWithTitle extends StatefulWidget {
  const RadioButtonWithTitle({Key? key}) : super(key: key);

  @override
  State<RadioButtonWithTitle> createState() => _RadioButtonWithTitleState();
}

class _RadioButtonWithTitleState extends State<RadioButtonWithTitle> {
  bool selectedBox = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: const Text('Male'),
          value: false,
          groupValue: selectedBox,
          onChanged: (bool? value) {
            setState(() {
              selectedBox = value!;
              print('111111');
            });
          },
          selected: !selectedBox,
        ),
        RadioListTile(
          title: const Text('Female'),
          value: true,
          groupValue: selectedBox,
          onChanged: (bool? value) {
            setState(() {
              selectedBox = value!;
              print('222222');
            });
          },
          selected: selectedBox,
        ),
      ],
    );
  }
}
