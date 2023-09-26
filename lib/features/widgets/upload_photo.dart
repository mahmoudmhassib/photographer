import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../core/utils/icons.dart';
import '../../core/utils/take_photo.dart';
import '../../core/utils/constants.dart';
import '../../core/utils/assets.dart';
import '../login/view/widget/custom_bottom_sheet.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({
    super.key,
  });

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  Future<void> getImage(ImageSource src) async {
    final pickedFile = await TakePhoto.picker.pickImage(source: src);
    setState(() {
      if (pickedFile != null) {
        TakePhoto.image = File(pickedFile.path);
      } else {
        // TakePhoto.image = null;
        return  print('No Image selected !!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              useRootNavigator: true,
              builder: (context) {
                return CustomBottomSheet(
                  textListTileTop: 'Pick From Camera',
                  textListTileBottom: 'Pick From Gallery',
                  onTapTop: () {
                    getImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                  onTapBottom: () {
                    getImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  }, textColorSheet: Colors.black, iconDataTop:  IconsData.camera, iconDataBottom: IconsData.gallery,
                );
              });
        },
        child: TakePhoto.image == null
            ? Container(
                margin: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                height: MediaQuery.of(context).size.height * .14,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kUploadPhotoColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetsData.uploadPhoto,
                      fit: BoxFit.contain,
                      height: 45,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    const Text(
                      'Upload Photo',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            : Container(
                margin: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                height: MediaQuery.of(context).size.height * .14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: FileImage(
                      TakePhoto.image!,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ));
  }
}
