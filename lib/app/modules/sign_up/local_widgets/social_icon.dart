import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  final String rootAsset;
  final VoidCallback onTap;
  const SocialIcon({
    super.key,
    required this.rootAsset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: Colors.blue.shade300,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          rootAsset,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
