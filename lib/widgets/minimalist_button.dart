import 'package:flutter/material.dart';

class MinimalistButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? primaryColor;
  final Color? disabledColor;
  final Widget? child;

  const MinimalistButton({
    required this.onPressed,
    this.primaryColor,
    this.disabledColor,
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 57.0,
      minWidth: double.infinity,
      elevation: 0.0,
      color: primaryColor ?? Theme.of(context).primaryColor,
      disabledColor: disabledColor ?? Theme.of(context).disabledColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
