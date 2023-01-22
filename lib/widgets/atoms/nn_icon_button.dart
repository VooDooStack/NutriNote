import 'package:flutter/material.dart';

class NNIconButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final void Function()? onTap;
  final Color? buttonColor;
  final Color? textColor;
  final bool? isOutline;
  const NNIconButton({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
    this.buttonColor,
    this.textColor,
    this.isOutline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isOutline != true || isOutline != null ? buttonColor ?? Theme.of(context).colorScheme.surface : null,
          border: isOutline == true ? Border.all(color: buttonColor ?? Theme.of(context).colorScheme.primary) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon, color: textColor ?? Theme.of(context).colorScheme.primary),
            if (icon != null) const SizedBox(width: 10),
            Text(text, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor ?? Theme.of(context).colorScheme.primary)),
          ],
        ),
      ),
    );
  }
}
