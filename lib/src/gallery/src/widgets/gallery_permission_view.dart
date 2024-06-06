import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';

///
class GalleryPermissionView extends StatelessWidget {
  ///
  const GalleryPermissionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(24.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Heading
          Text(
            'Access Your Album',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),

          SizedBox(height: 8.0),

          // Description
          Text(
            'Allow Image picker to access your album for picking media.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),

          SizedBox(height: 8.0),

          // Allow access button
          TextButton(
            onPressed: PhotoManager.openSetting,
            child: Text(
              'Allow Access',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
