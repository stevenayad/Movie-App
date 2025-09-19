import 'package:flutter/material.dart';

class CustomContent extends StatelessWidget {
  final String? imagePath; 
  final String contentName;
  final String? subtitle;
  final String? number;

  final Color leadingBgColor;
  final Color iconColor;
  final Color titleColor;
  final Color subtitleColor;
  final Color numberColor;

  final bool showArrow;
  final bool showSwitch;
  final bool switchValue;
  final ValueChanged<bool>? onSwitchChanged;

  final bool showDropdown;
  final List<DropdownMenuItem<String>>? dropdownItems;
  final String? selectedDropdownValue;
  final ValueChanged<String?>? onDropdownChanged;

  final VoidCallback? onTap;

  const CustomContent({
    Key? key,
    this.imagePath,
    required this.contentName,
    this.subtitle,
    this.number,

    this.leadingBgColor = const Color(0xFF424242),
    this.iconColor = Colors.white,
    this.titleColor = Colors.white,
    this.subtitleColor = Colors.white70,
    this.numberColor = Colors.white70,

    this.showArrow = false,
    this.showSwitch = false,
    this.switchValue = false,
    this.onSwitchChanged,

    this.showDropdown = false,
    this.dropdownItems,
    this.selectedDropdownValue,
    this.onDropdownChanged,

    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? trailingWidget;

    if (showSwitch) {
      trailingWidget = Switch(
        value: switchValue,
        onChanged: onSwitchChanged,
        activeThumbColor: Colors.white,
        activeTrackColor: Colors.red,
      );
    } else if (showDropdown) {
      trailingWidget = Container(
        width: 80,
        height: 24,
        color: Colors.grey.shade800,
        child: Center(
          child: DropdownButton<String>(
            value: selectedDropdownValue,
            items: dropdownItems,
            onChanged: onDropdownChanged,
            dropdownColor: Colors.white,
            
            style: TextStyle(color: titleColor, fontSize: 14),
            iconEnabledColor: iconColor,
            underline: const SizedBox(),
          ),
        ),
      );
    } else if (showArrow) {
      trailingWidget = Icon(Icons.arrow_forward_ios, color: iconColor, size: 18);
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        leading: imagePath != null
            ? Container(
                decoration: BoxDecoration(
                  color: leadingBgColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.all(12),
                child: ImageIcon(
                  AssetImage(imagePath!),
                  color: iconColor,
                ),
              )
            : null,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              contentName,
              style: TextStyle(color: titleColor, fontSize: 16),
            ),
            if (number != null)
              Text(
                number!,
                style: TextStyle(color: numberColor, fontSize: 14),
              ),
          ],
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: TextStyle(color: subtitleColor, fontSize: 14),
              )
            : null,
        trailing: trailingWidget,
      ),
    );
  }
}
