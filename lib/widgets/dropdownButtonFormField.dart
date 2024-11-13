import 'package:flutter/material.dart';
import '../pallete.dart';

class DropdownInputField<T> extends StatelessWidget {
  const DropdownInputField({
    Key? key,
    required this.icon,
    required this.hint,
    required this.items,
    this.onChanged,
    this.value,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final T? value;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: DropdownButtonFormField<T>(
            value: value,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icon,
                  size: 28,
                  color: kWhite,
                ),
              ),
              hintText: hint,
              hintStyle: kBodyText,
            ),
            style: kBodyText,
            dropdownColor: Colors.grey[800],
            iconEnabledColor: kWhite,
            items: items,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
