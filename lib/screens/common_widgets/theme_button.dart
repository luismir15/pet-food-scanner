import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  ThemeButton({super.key, required this.name, required this.onPressed});
  String name;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          minimumSize: const Size.fromHeight(40),
          padding: const EdgeInsets.all(16.0),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        child: Text(
          name,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
