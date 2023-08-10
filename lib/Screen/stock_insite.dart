import 'package:flutter/material.dart';

class StockInSightScreen extends StatefulWidget {
  const StockInSightScreen({super.key});

  @override
  State<StockInSightScreen> createState() => _StockInSightScreenState();
}

class _StockInSightScreenState extends State<StockInSightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Stock In Sight Screen')),
    );
  }
}
