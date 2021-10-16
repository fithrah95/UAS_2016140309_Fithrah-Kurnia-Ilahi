import 'package:cuaca/providers/cuaca_provider.dart';
import 'package:cuaca/views/cuaca_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CuacaProvider>(
          create: (context) => CuacaProvider(),
        )
      ],
      child: MaterialApp(
        title: '2016140309 - Fithrah Kurnia Ilahi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: CuacaView(),
     ),
    );
  }
}