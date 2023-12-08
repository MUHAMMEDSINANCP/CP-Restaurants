import 'package:flutter/material.dart';
import '../common/color_extension.dart';

enum RoundButtonType { white, primary }

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final RoundButtonType type;
  final bool isLoading;

  const RoundButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.type = RoundButtonType.white,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        minWidth: double.maxFinite,
        color: type == RoundButtonType.white ? Colors.white : TColor.primary,
        textColor:
            type == RoundButtonType.white ? TColor.primary : Colors.white,
        height: 55,
        child: isLoading
            ? const SizedBox(
                height: 26,
                width: 26,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  color: Colors.white,
                  backgroundColor: Colors.greenAccent,
                ),
              )
            : Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
      ),
    );
  }
}
