import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:admin_portfolio/configs/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.label,
      required this.hint,
      this.maxLines = 1,
      this.suffixIcon
      });

  final String label, hint;
  final int? maxLines;
  final Widget? suffixIcon;
  // final VoidCallback? onPressed;
  // final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: AppTextStyle.titleMedium(context),
              ),
            ),
            const SizedBox(
              width: AppSizes.bodyPadding,
            ),
            Container(
              height: 23 * double.parse(maxLines.toString()),
              width: 1.2,
              color: AppColors.seed,
            ),
            const SizedBox(
              width: AppSizes.bodyPadding,
            ),
            Expanded(
              flex: 4,
              child: TextField(
                maxLines: maxLines,
                decoration: InputDecoration(
                  suffixIcon: suffixIcon,
                    // suffixIcon: onPressed == null
                    //     ? null
                    //     : IconButton(
                    //         onPressed: onPressed, icon: const Icon(Icons.add)),
                    hintText: hint,
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
        const Divider(
          height: 0,
          color: AppColors.seed,
        )
      ],
    );
  }
}
