import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/font.dart';

class CustomCheckbox extends StatefulWidget {
  final String label;

  const CustomCheckbox({super.key, required this.label});
  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool? checkBoxValue = false;

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      checkColor: Colors.white,
      activeColor: Colors.amber,
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        widget.label,
        style: semiBoldText14.copyWith(
          color: Colors.white,
        ),
      ),
      value: checkBoxValue,
      dense: true,
      onChanged: (newValue) {
        setState(() {
          checkBoxValue = newValue;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
