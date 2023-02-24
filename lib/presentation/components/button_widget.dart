import 'package:flutter/material.dart';

import 'package:skyhigh/presentation/resources/colour_manager.dart';

class SdButton extends StatelessWidget {
  const SdButton({
    super.key,
    required this.text,
    required this.bgColor,
    required this.onTap,
  });

  final VoidCallback? onTap;
  final String text;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: const Size.fromHeight(50),
        shadowColor: AppColor.medium.withOpacity(0.4),
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          color: AppColor.light,
        ),
      ),
    );
  }
}
