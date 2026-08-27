
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onTap;

  const PrimaryButton({
    super.key,
    required this.text,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65, 
      decoration: BoxDecoration(
        color: const Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(19),
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (icon != null)
                Positioned(
                  left: 25,
                  child: Icon(
                    icon,
                    color: const Color(0xff53B175),
                    size: 22,
                  ),
                ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff53B175),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}