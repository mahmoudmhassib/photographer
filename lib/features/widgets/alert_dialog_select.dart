import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/utils/take_photo.dart';

class AlertDialogSelect extends StatefulWidget {
  const AlertDialogSelect({
    super.key,
  });

  @override
  State<AlertDialogSelect> createState() => _AlertDialogSelectState();
}

class _AlertDialogSelectState extends State<AlertDialogSelect> {
  Future<void> getImage(ImageSource src) async {
    final pickedFile = await TakePhoto.picker.pickImage(source: src);
    setState(() {
      if (pickedFile != null) {
        TakePhoto.image = File(pickedFile.path);
      } else {
        // TakePhoto.image = null;
        return print('No Image selected !!');
      }
    });
  }
/*@override
  void dispose() {

    super.dispose();
  }*/
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Choose photo from:'),
      content: Container(
        height: 170,
        child: Column(
          children: [
            Divider(),
            Card(
              color: Colors.teal,
              child: ListTile(
                title: Text('Gallery'),
                leading: Icon(Icons.add_a_photo),
                onTap: () {
                  getImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Card(
              color: Colors.teal,
              child: ListTile(
                title: Text('Camera'),
                leading: Icon(Icons.add_a_photo),
                onTap: () {
                  getImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
