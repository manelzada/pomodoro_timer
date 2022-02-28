import 'package:flutter/material.dart';

class InsertValue extends StatelessWidget {
  final int value;
  final String title;
  final bool? isWorking;
  final void Function()? increment;
  final void Function()? decrement;

  const InsertValue(
      {Key? key,
      required this.value,
      required this.title,
      this.increment,
      this.decrement,
      this.isWorking})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: isWorking == false ? Colors.green : Colors.red),
              onPressed: value >= 60 ? null : increment,
              child: const Icon(Icons.arrow_upward),
            ),
            const SizedBox(width: 10),
            Text(
              '$value',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(width: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: isWorking == false ? Colors.green : Colors.red),
              onPressed: value <= 0 ? null : decrement,
              child: const Icon(Icons.arrow_downward),
            ),
          ],
        ),
        const Text(
          'minutos',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
