import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:flutter/material.dart';

class SideBarTile extends StatelessWidget {
  const SideBarTile({super.key, required this.title, required this.currentPage, required this.iconData, required this.onTap});
  final String title, currentPage;
  final VoidCallback onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: currentPage == title,
      textColor: AppColors.hint,
      iconColor: AppColors.hint,
      selectedTileColor: AppColors.selected,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.bodyPadding-5)),
      onTap: onTap,
      title: Text(" $title"),
      leading: Icon(iconData,size: 20),
      selectedColor: AppColors.seed,
    );
  }
}
