import 'package:flutter/material.dart';
import 'package:movie/Profile/widgets/appbar/decorated_AppBarIcon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final String? actionIcon; 
  final VoidCallback? onAction;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onBack,
    this.actionIcon,
    this.onAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: DecoratedIconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onTap: onBack ?? () => Navigator.of(context).pop(),
      ),
      actions: actionIcon != null
          ? [
              DecoratedIconButton(
                icon: ImageIcon(AssetImage(actionIcon!),color: Colors.white,), 
                onTap: onAction ?? () {},
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
