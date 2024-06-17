import 'package:flutter/material.dart';
import 'package:maenbal/app/common/styles/colors.dart';
import 'package:maenbal/app/common/theme/font.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? action;
  final bool? isLeading;
  final Widget? leading;
  final double height;
  const CustomAppBar({
    super.key,
    required this.title,
    this.action,
    this.height = 60,
    this.isLeading = false,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: isLeading!
          ? leading
          : IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: kColorScheme.primary,
                size: 24,
              ),
            ),
      centerTitle: true,
      title: Text(
        title!,
        style: semiBoldText18.copyWith(
          color: AppColors.neutralColors[0],
        ),
      ),
      actions: action,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, height);
}
