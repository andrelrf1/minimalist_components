import 'package:flutter/material.dart';

class MinimalistAppBar extends StatelessWidget with PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool autoImplementLeading;
  final Color? color;
  final PreferredSizeWidget? bottom;

  const MinimalistAppBar({
    this.title,
    this.leading,
    this.actions,
    this.autoImplementLeading = true,
    this.color,
    this.bottom,
    Key? key,
  }) : super(key: key);

  Widget? _setLeading(BuildContext context) {
    if (autoImplementLeading && leading == null) {
      return IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
        ),
      );
    } else if (leading != null) {
      return leading;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: color ?? Colors.transparent,
      automaticallyImplyLeading: false,
      leading: _setLeading(context),
      iconTheme: IconThemeData(
        color: Theme.of(context).appBarTheme.iconTheme!.color,
      ),
      title: title,
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(bottom == null
      ? kToolbarHeight
      : kToolbarHeight + bottom!.preferredSize.height);
}
