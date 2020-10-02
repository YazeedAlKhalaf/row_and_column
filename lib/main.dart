import 'package:flutter/material.dart';
import 'package:row_and_column/screens/row_column_example.dart';
import 'package:row_and_column/screens/row_column_tester_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Row and Column',
      themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Color(0xff29B353),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Color(0xff29B353),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: <Widget>[
            RowColumnExample(),
            RowColumnTesterScreen(),
          ],
        ),
      ),
    );
  }
}
