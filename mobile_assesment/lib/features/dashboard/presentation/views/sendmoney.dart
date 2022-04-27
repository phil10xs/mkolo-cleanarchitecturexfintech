import 'package:flutter/material.dart';

class SendMoneyScreen extends StatefulWidget {
  static const route = '/sendMoney';
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const Center(
        child: Text('NAVIGATION TO TRANSFER MONEY SCREEN'),
      ),
    );
  }
}
