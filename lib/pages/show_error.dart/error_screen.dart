import 'package:api_integration1/provider/error_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20),
        child: ChangeNotifierProvider<ErrorProvider>(
          create: (BuildContext context) => ErrorProvider(),
          child: Consumer<ErrorProvider>(builder: (context, provider, child) {
            Text(
              provider.eligibilityMessage.toString(),
              style: TextStyle(
                  color: (provider.isEligible == true)
                      ? Colors.green
                      : Colors.red),
            );
            return Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Enter your age",
                  ),
                  onChanged: (value) {
                    provider.checkEligiblility(int.parse(value));
                  },
                )
              ],
            );
          }),
        ),
      )),
    );
  }
}
