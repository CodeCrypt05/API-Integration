import 'package:flutter/material.dart';

class CardAndButton extends StatelessWidget {
  CardAndButton(
      {super.key,
      required this.value1,
      required this.value2,
      required this.onPressed});

  final String value1;
  late String value2;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            margin: EdgeInsets.only(left: 18, right: 18, top: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value1,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                  Text(
                    value2,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: onPressed,
          child: Text('Refresh'),
        ),
      ],
    );
    ;
  }
}
