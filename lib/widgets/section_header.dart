import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onActionPressed;

  const SectionHeader({
    super.key,
    required this.title,
    this.actionText,
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        if (actionText != null)
          GestureDetector(
            onTap: onActionPressed,
            child: Text(
              actionText!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFD5353),
              ),
            ),
          ),
      ],
    );
  }
}
