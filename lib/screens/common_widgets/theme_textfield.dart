import 'package:flutter/material.dart';
import 'package:pet_food_scanner/helper/color_sys.dart';

class ThemeTextField extends StatelessWidget {
  const ThemeTextField({
    super.key,
    required this.controllerName,
    required this.fieldName,
  });

  final TextEditingController controllerName;
  final String fieldName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorSys.lightBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextField(
              controller: controllerName,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: fieldName,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
