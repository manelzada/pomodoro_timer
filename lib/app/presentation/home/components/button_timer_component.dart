import 'package:flutter/material.dart';

class ButtonTimerComponent extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const ButtonTimerComponent({
    Key? key,
    required this.text,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
