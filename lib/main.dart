import 'package:flutter/material.dart';
import 'orders_bottomnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SupplierOrderBottomNav(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFFFF9601),
        )
      ),
    );
  }
}
