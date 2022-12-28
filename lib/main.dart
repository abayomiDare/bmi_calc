import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const InputPage(),
      //   '/result': (context) => const ResultScreen()
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
