import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.name, required this.onPressed});
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColors.button,
            padding: EdgeInsets.symmetric(vertical: AppSizes.bodyPadding+3, horizontal: AppSizes.width(context)*0.1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            )
        ),
        child: Text(name,style: const TextStyle(color: AppColors.scaffoldBg, letterSpacing: 1,fontSize: 15))
    );
  }
}
