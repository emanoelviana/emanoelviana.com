import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final double size;

  const ProfilePicture({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: Image(
        image: const AssetImage('assets/images/profile/profile_picture.png'),
        width: size,
        height: size,
      ),
    );
  }
}
