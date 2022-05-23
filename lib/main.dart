import 'package:flutter/material.dart';
import 'package:omobile/supplier_new_orders.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SupplierNewOrders(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFFFF9601),
        )
      ),
    );
  }
}
