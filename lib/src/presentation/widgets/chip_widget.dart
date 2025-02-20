
import 'package:flutter/material.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';

class GreenChip extends StatelessWidget {
  const GreenChip(this.label, {super.key, this.fontSize = 10});

  final String label;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF219653).withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class IconChip extends StatelessWidget {
  const IconChip(this.label,
      {super.key,
      this.color = ThemeColors.red,
      required this.icon,
      this.iconSize,
      this.textColor = Colors.white});

  final String label;
  final Color color;
  final IconData icon;
  final double? iconSize;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final iconWidget = Icon(icon, color: textColor, size: iconSize);

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          iconWidget,
          SizedBox(
            width: 6,
          ),
          Text(
            label,
            style:  TextStyle(fontSize: 10, color: textColor),
          ),
        ],
      ),
    );
  }
}

class ColorChip extends StatelessWidget {
  const ColorChip(this.label,
      {super.key, this.color = ThemeColors.red, this.sizeFont = 9});

  final String label;
  final Color color;
  final double? sizeFont;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Text(
        label,
        style: TextStyle(
            fontSize: sizeFont,
            color: Colors.white,
            fontWeight: sizeFont != 9 ? FontWeight.w600 : null),
      ),
    );
  }
}

class GreyChip extends StatelessWidget {
  const GreyChip(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ThemeColors.backgroundField,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class FilterChips extends StatelessWidget {
  const FilterChips(
    this.label, {
    super.key,
    this.selected = false,
    this.selectedColor = const Color(0XFFE3FFDE),
    this.selectedTextColor,
  });

  final String label;
  final bool selected;
  final Color selectedColor;
  final Color? selectedTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? selectedColor : null,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: selected ? null : Border.all(color: const Color(0xffe3ffde)),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 9,
          color: selected
              ? selectedTextColor ?? Theme.of(context).primaryColor
              : Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class ActiveInActiveChip extends StatelessWidget {
  const ActiveInActiveChip({super.key, this.active = false});

  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: active
            ? ThemeColors.green.withOpacity(0.1)
            : ThemeColors.red.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Text(
        active ? 'Aktif' : 'Kadaluarsa',
        style: TextStyle(
          fontSize: 9,
          color: active ? ThemeColors.green : ThemeColors.red,
        ),
      ),
    );
  }
}